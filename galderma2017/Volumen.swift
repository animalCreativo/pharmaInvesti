//
//  Volumen.swift
//  PharmaInvesti
//
//  Created by PixelCut on 19-04-17.
//  Copyright © 2017 PixelCut. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class Volumen : NSObject {

    //// Drawing Methods

    public dynamic class func drawProgressVolumen(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 720, height: 243), resizing: ResizingBehavior = .aspectFit, largoMax3: CGFloat = 327) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 720, height: 243), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 720, y: resizedFrame.height / 243)


        //// Color Declarations
        let purple = UIColor(red: 0.586, green: 0.163, blue: 0.507, alpha: 1.000)
        let grey = UIColor(red: 0.612, green: 0.616, blue: 0.628, alpha: 1.000)
        let blue = UIColor(red: 0.001, green: 0.390, blue: 0.523, alpha: 1.000)

        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 6.5, y: 227.5))
        bezierPath.addLine(to: CGPoint(x: 706.5, y: 227.5))
        purple.setStroke()
        bezierPath.lineWidth = 1
        bezierPath.stroke()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 6.5, y: 222.5))
        bezier2Path.addCurve(to: CGPoint(x: 6.5, y: 232.5), controlPoint1: CGPoint(x: 6.5, y: 230.68), controlPoint2: CGPoint(x: 6.5, y: 232.5))
        purple.setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 706.5, y: 222.5))
        bezier3Path.addCurve(to: CGPoint(x: 706.5, y: 232.5), controlPoint1: CGPoint(x: 706.5, y: 230.68), controlPoint2: CGPoint(x: 706.5, y: 232.5))
        purple.setStroke()
        bezier3Path.lineWidth = 1
        bezier3Path.stroke()




        //// Group 3
        context.saveGState()
        context.beginTransparencyLayer(auxiliaryInfo: nil)


        //// Rectangle 2 Drawing
        context.saveGState()
        context.translateBy(x: 912, y: 213)
        context.rotate(by: 180 * CGFloat.pi/180)

        let rectangle2Path = UIBezierPath(rect: CGRect(x: 205, y: 0, width: (largoMax3 - 333), height: 213))
        UIColor.gray.setFill()
        rectangle2Path.fill()

        context.restoreGState()


        //// Group 2
        context.saveGState()
        context.setBlendMode(.sourceOut)
        context.beginTransparencyLayer(auxiliaryInfo: nil)


        //// Bezier 5 Drawing
        let bezier5Path = UIBezierPath()
        bezier5Path.move(to: CGPoint(x: 18, y: 213))
        bezier5Path.addLine(to: CGPoint(x: 109, y: 213))
        bezier5Path.addLine(to: CGPoint(x: 109, y: 186))
        bezier5Path.addLine(to: CGPoint(x: 18, y: 213))
        bezier5Path.close()
        blue.setFill()
        bezier5Path.fill()


        //// Bezier 6 Drawing
        let bezier6Path = UIBezierPath()
        bezier6Path.move(to: CGPoint(x: 109, y: 186))
        bezier6Path.addLine(to: CGPoint(x: 109, y: 213))
        bezier6Path.addLine(to: CGPoint(x: 194, y: 213))
        bezier6Path.addLine(to: CGPoint(x: 194, y: 159))
        bezier6Path.addLine(to: CGPoint(x: 109, y: 186))
        bezier6Path.close()
        grey.setFill()
        bezier6Path.fill()


        //// Bezier 4 Drawing
        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: 194, y: 159))
        bezier4Path.addLine(to: CGPoint(x: 194, y: 213))
        bezier4Path.addLine(to: CGPoint(x: 707, y: 213))
        bezier4Path.addLine(to: CGPoint(x: 707, y: 0))
        bezier4Path.addLine(to: CGPoint(x: 194, y: 159))
        bezier4Path.close()
        purple.setFill()
        bezier4Path.fill()


        context.endTransparencyLayer()
        context.restoreGState()


        context.endTransparencyLayer()
        context.restoreGState()
        
        context.restoreGState()

    }




    @objc(VolumenResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}