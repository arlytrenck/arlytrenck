import Foundation
import ImageIO
import UniformTypeIdentifiers

let args = CommandLine.arguments
let light = URL(fileURLWithPath: args[1]), dark = URL(fileURLWithPath: args[2]), out = URL(fileURLWithPath: args[3])

func load(_ u: URL) -> CGImage {
    let src = CGImageSourceCreateWithURL(u as CFURL, nil)!
    return CGImageSourceCreateImageAtIndex(src, 0, nil)!
}

// apr: index of the light and dark image, as a base64 binary plist
let plist = try PropertyListSerialization.data(fromPropertyList: ["l": 0, "d": 1], format: .binary, options: 0)
let meta = CGImageMetadataCreateMutable()
let ns = "http://ns.apple.com/namespace/1.0/" as CFString
guard CGImageMetadataRegisterNamespaceForPrefix(meta, ns, "apple_desktop" as CFString, nil) else { fatalError("ns") }
let tag = CGImageMetadataTagCreate(ns, "apple_desktop" as CFString, "apr" as CFString, .string, plist.base64EncodedString() as CFString)!
guard CGImageMetadataSetTagWithPath(meta, nil, "apple_desktop:apr" as CFString, tag) else { fatalError("tag") }

let dest = CGImageDestinationCreateWithURL(out as CFURL, UTType.heic.identifier as CFString, 2, nil)!
let opts = [kCGImageDestinationLossyCompressionQuality: 0.9] as CFDictionary
CGImageDestinationAddImageAndMetadata(dest, load(light), meta, opts)
CGImageDestinationAddImage(dest, load(dark), opts)
guard CGImageDestinationFinalize(dest) else { fatalError("finalize") }
print("wrote \(out.path)")
