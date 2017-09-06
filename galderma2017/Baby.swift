//
//  Baby.swift
//  PharmaInvesti
//
//  Created by fbarrios on 31-08-17.
//  Copyright © 2017 animal. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class Baby : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawCanvasGlass(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 194, height: 241), resizing: ResizingBehavior = .aspectFit, number: CGFloat = 292, milk: CGFloat = 113, colorRelleno : UIColor = UIColor(red: 0.686, green: 0.349, blue: 0.616, alpha: 1.000)) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 194, height: 241), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 194, y: resizedFrame.height / 241)


        //// Color Declarations
        let strokeColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let fillColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let fillColor2 = UIColor(red: 0.867, green: 0.973, blue: 1.000, alpha: 1.000)

        //// Variable Declarations
        let expression = number > 174 ? true : false
        let expression2: CGFloat = number - 174
        let expression3: CGFloat = number - 241
        let expression4 = number > 241 ? true : false
        let expression5: CGFloat = number / 300.0 - 0.2
        let expression7: CGFloat = (number / 300.0 - 0.18) * 1.2
        let expression8 = number > 250 ? true : false
        let expression6 = milk > 150 ? true : false

        //// Group 2
        //// Page-
        context.saveGState()
        context.translateBy(x: 174.49, y: 232.23)
        context.rotate(by: -180 * CGFloat.pi/180)



        //// Artboard
        //// vaso
        //// Path Drawing
        let pathPath = UIBezierPath()
        pathPath.move(to: CGPoint(x: 3.53, y: 203.13))
        pathPath.addCurve(to: CGPoint(x: 80.82, y: 219.77), controlPoint1: CGPoint(x: 3.53, y: 203.13), controlPoint2: CGPoint(x: 0.17, y: 219.77))
        pathPath.addCurve(to: CGPoint(x: 163.51, y: 203.13), controlPoint1: CGPoint(x: 161.46, y: 219.77), controlPoint2: CGPoint(x: 163.51, y: 203.13))
        pathPath.addLine(to: CGPoint(x: 139.49, y: 18.19))
        pathPath.addCurve(to: CGPoint(x: 80.82, y: 5.81), controlPoint1: CGPoint(x: 139.49, y: 18.19), controlPoint2: CGPoint(x: 142.47, y: 4.94))
        pathPath.addCurve(to: CGPoint(x: 23.43, y: 18.19), controlPoint1: CGPoint(x: 19.16, y: 6.69), controlPoint2: CGPoint(x: 23.43, y: 18.19))
        pathPath.addLine(to: CGPoint(x: 3.53, y: 203.13))
        pathPath.close()
        pathPath.usesEvenOddFillRule = true
        fillColor2.setFill()
        pathPath.fill()


        //// Group
        context.saveGState()
        context.translateBy(x: 157.49, y: 174.23)
        context.rotate(by: 180 * CGFloat.pi/180)



        //// a Drawing
        context.saveGState()
        context.translateBy(x: 16, y: 168)
        context.rotate(by: -90 * CGFloat.pi/180)

        let aPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: (number - 131), height: 119))
        colorRelleno.setFill()
        aPath.fill()

        context.restoreGState()


        if (expression) {
            //// b Drawing
            context.saveGState()
            context.translateBy(x: 16, y: 126)
            context.rotate(by: -90 * CGFloat.pi/180)

            let bPath = UIBezierPath(rect: CGRect(x: 0, y: -8, width: expression2, height: 135))
            colorRelleno.setFill()
            bPath.fill()

            context.restoreGState()
        }


        if (expression4) {
            //// c Drawing
            context.saveGState()
            context.translateBy(x: 16, y: 65)
            context.rotate(by: -90 * CGFloat.pi/180)

            let cPath = UIBezierPath(rect: CGRect(x: 0, y: -16, width: expression3, height: 148))
            colorRelleno.setFill()
            cPath.fill()

            context.restoreGState()
        }


        if (expression6) {
            //// fill Drawing
            context.saveGState()
            context.translateBy(x: 143.03, y: 168.83)
            context.rotate(by: -180 * CGFloat.pi/180)
            context.scaleBy(x: 0.85, y: expression5)

            let fillPath = UIBezierPath()
            fillPath.move(to: CGPoint(x: 0.03, y: 184.15))
            fillPath.addCurve(to: CGPoint(x: 77.03, y: 200.03), controlPoint1: CGPoint(x: 0.03, y: 184.15), controlPoint2: CGPoint(x: -3.62, y: 200.03))
            fillPath.addCurve(to: CGPoint(x: 160.03, y: 184.15), controlPoint1: CGPoint(x: 157.67, y: 200.03), controlPoint2: CGPoint(x: 160.03, y: 184.15))
            fillPath.addLine(to: CGPoint(x: 136.03, y: 11.25))
            fillPath.addCurve(to: CGPoint(x: 77.03, y: 0.04), controlPoint1: CGPoint(x: 136.03, y: 11.25), controlPoint2: CGPoint(x: 138.68, y: -0.78))
            fillPath.addCurve(to: CGPoint(x: 20.03, y: 11.25), controlPoint1: CGPoint(x: 15.37, y: 0.86), controlPoint2: CGPoint(x: 20.03, y: 11.25))
            fillPath.addLine(to: CGPoint(x: 0.03, y: 184.15))
            fillPath.close()
            fillPath.usesEvenOddFillRule = true
            colorRelleno.setFill()
            fillPath.fill()

            context.restoreGState()
        }


        if (expression8) {
            //// fill 2 Drawing
            context.saveGState()
            context.translateBy(x: 149.03, y: 167.83)
            context.rotate(by: -180 * CGFloat.pi/180)
            context.scaleBy(x: 0.85, y: expression7)

            let fill2Path = UIBezierPath()
            fill2Path.move(to: CGPoint(x: 0.03, y: 162.26))
            fill2Path.addCurve(to: CGPoint(x: 86.65, y: 176.26), controlPoint1: CGPoint(x: 0.03, y: 162.26), controlPoint2: CGPoint(x: -4.08, y: 176.26))
            fill2Path.addCurve(to: CGPoint(x: 180.03, y: 162.26), controlPoint1: CGPoint(x: 177.38, y: 176.26), controlPoint2: CGPoint(x: 180.03, y: 162.26))
            fill2Path.addLine(to: CGPoint(x: 153.03, y: 9.92))
            fill2Path.addCurve(to: CGPoint(x: 86.65, y: 0.03), controlPoint1: CGPoint(x: 153.03, y: 9.92), controlPoint2: CGPoint(x: 156.01, y: -0.68))
            fill2Path.addCurve(to: CGPoint(x: 22.53, y: 9.92), controlPoint1: CGPoint(x: 17.29, y: 0.75), controlPoint2: CGPoint(x: 22.53, y: 9.92))
            fill2Path.addLine(to: CGPoint(x: 0.03, y: 162.26))
            fill2Path.close()
            fill2Path.usesEvenOddFillRule = true
            colorRelleno.setFill()
            fill2Path.fill()

            context.restoreGState()
        }



        context.restoreGState()


        //// Path 2 Drawing
        let path2Path = UIBezierPath()
        path2Path.move(to: CGPoint(x: 1.02, y: 205.51))
        path2Path.addCurve(to: CGPoint(x: 80.97, y: 222.67), controlPoint1: CGPoint(x: 1.02, y: 205.51), controlPoint2: CGPoint(x: -2.45, y: 222.67))
        path2Path.addCurve(to: CGPoint(x: 166.51, y: 205.51), controlPoint1: CGPoint(x: 164.39, y: 222.67), controlPoint2: CGPoint(x: 166.51, y: 205.51))
        path2Path.addLine(to: CGPoint(x: 141.67, y: 14.81))
        path2Path.addCurve(to: CGPoint(x: 80.97, y: 2.04), controlPoint1: CGPoint(x: 141.67, y: 14.81), controlPoint2: CGPoint(x: 144.75, y: 1.14))
        path2Path.addCurve(to: CGPoint(x: 21.61, y: 14.81), controlPoint1: CGPoint(x: 17.19, y: 2.94), controlPoint2: CGPoint(x: 21.61, y: 14.81))
        path2Path.addLine(to: CGPoint(x: 1.02, y: 205.51))
        path2Path.close()
        strokeColor.setStroke()
        path2Path.lineWidth = 9
        path2Path.miterLimit = 4
        path2Path.stroke()


        //// Rectangle Drawing
        let rectanglePath = UIBezierPath()
        rectanglePath.move(to: CGPoint(x: 41.22, y: 59.03))
        rectanglePath.addCurve(to: CGPoint(x: 36.39, y: 62.95), controlPoint1: CGPoint(x: 38.81, y: 58.78), controlPoint2: CGPoint(x: 36.65, y: 60.53))
        rectanglePath.addLine(to: CGPoint(x: 26.86, y: 153.65))
        rectanglePath.addCurve(to: CGPoint(x: 30.77, y: 158.49), controlPoint1: CGPoint(x: 26.6, y: 156.07), controlPoint2: CGPoint(x: 28.36, y: 158.23))
        rectanglePath.addLine(to: CGPoint(x: 31, y: 158.51))
        rectanglePath.addCurve(to: CGPoint(x: 35.84, y: 154.6), controlPoint1: CGPoint(x: 33.42, y: 158.76), controlPoint2: CGPoint(x: 35.58, y: 157.01))
        rectanglePath.addLine(to: CGPoint(x: 45.37, y: 63.89))
        rectanglePath.addCurve(to: CGPoint(x: 41.46, y: 59.06), controlPoint1: CGPoint(x: 45.62, y: 61.47), controlPoint2: CGPoint(x: 43.87, y: 59.31))
        rectanglePath.addLine(to: CGPoint(x: 41.22, y: 59.03))
        rectanglePath.close()
        rectanglePath.usesEvenOddFillRule = true
        fillColor.setFill()
        rectanglePath.fill()


        //// Path- 3 Drawing
        let path3Path = UIBezierPath()
        path3Path.move(to: CGPoint(x: 1.73, y: 203.57))
        path3Path.addCurve(to: CGPoint(x: 84.13, y: 189.59), controlPoint1: CGPoint(x: 1.73, y: 203.57), controlPoint2: CGPoint(x: 6.62, y: 189.59))
        path3Path.addCurve(to: CGPoint(x: 165.84, y: 204.38), controlPoint1: CGPoint(x: 161.65, y: 189.59), controlPoint2: CGPoint(x: 165.84, y: 204.38))
        strokeColor.setStroke()
        path3Path.lineWidth = 9
        path3Path.miterLimit = 4
        path3Path.stroke()


        //// Path- 4 Drawing
        let path4Path = UIBezierPath()
        path4Path.move(to: CGPoint(x: 22.61, y: 16.85))
        path4Path.addCurve(to: CGPoint(x: 83.9, y: 32.46), controlPoint1: CGPoint(x: 22.61, y: 16.85), controlPoint2: CGPoint(x: 13.9, y: 32.46))
        path4Path.addCurve(to: CGPoint(x: 140.88, y: 16.85), controlPoint1: CGPoint(x: 153.91, y: 32.46), controlPoint2: CGPoint(x: 140.88, y: 16.85))
        strokeColor.setStroke()
        path4Path.lineWidth = 9
        path4Path.miterLimit = 4
        path4Path.stroke()







        context.restoreGState()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawCanvasMilk(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 137, height: 253), resizing: ResizingBehavior = .aspectFit, milk: CGFloat = 113, colorRelleno : UIColor = UIColor(red: 0.686, green: 0.349, blue: 0.616, alpha: 1.000)) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 137, height: 253), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 137, y: resizedFrame.height / 253)


        //// Color Declarations
        let strokeColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let fillColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let fillColor2 = UIColor(red: 0.867, green: 0.973, blue: 1.000, alpha: 1.000)

        //// Page-1
        //// Artboard
        //// biberon
        //// Rectangle-2
        //// path-1 Drawing
        let path1Path = UIBezierPath(roundedRect: CGRect(x: 7, y: 90, width: 122, height: 154), cornerRadius: 28)
        fillColor2.setFill()
        path1Path.fill()


        //// Rectangle 5 Drawing
        let rectangle5Path = UIBezierPath(rect: CGRect(x: 14, y: 229, width: 107, height: 11))
        colorRelleno.setFill()
        rectangle5Path.fill()


        //// Rectangle Drawing
        context.saveGState()
        context.translateBy(x: 13, y: 231)
        context.rotate(by: -90 * CGFloat.pi/180)

        let rectanglePath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: milk, height: 112))
        colorRelleno.setFill()
        rectanglePath.fill()

        context.restoreGState()


        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(roundedRect: CGRect(x: 8.5, y: 89.5, width: 120, height: 154), cornerRadius: 28)
        strokeColor.setStroke()
        rectangle3Path.lineWidth = 9
        rectangle3Path.stroke()




        //// Rectangle- 4
        //// path-2 Drawing
        let path2Path = UIBezierPath(roundedRect: CGRect(x: 15, y: 60, width: 105, height: 30), cornerRadius: 11)
        fillColor2.setFill()
        path2Path.fill()


        //// Rectangle 6 Drawing
        let rectangle6Path = UIBezierPath()
        rectangle6Path.move(to: CGPoint(x: 37.5, y: 58.5))
        rectangle6Path.addLine(to: CGPoint(x: 101.68, y: 58.5))
        rectangle6Path.addCurve(to: CGPoint(x: 108.08, y: 59.55), controlPoint1: CGPoint(x: 101.38, y: 58.5), controlPoint2: CGPoint(x: 104.91, y: 58.5))
        rectangle6Path.addLine(to: CGPoint(x: 108.7, y: 59.7))
        rectangle6Path.addCurve(to: CGPoint(x: 118.5, y: 73.7), controlPoint1: CGPoint(x: 114.58, y: 61.84), controlPoint2: CGPoint(x: 118.5, y: 67.44))
        rectangle6Path.addCurve(to: CGPoint(x: 118.5, y: 74.5), controlPoint1: CGPoint(x: 118.5, y: 74.5), controlPoint2: CGPoint(x: 118.5, y: 74.5))
        rectangle6Path.addLine(to: CGPoint(x: 118.5, y: 74.5))
        rectangle6Path.addLine(to: CGPoint(x: 118.5, y: 74.5))
        rectangle6Path.addLine(to: CGPoint(x: 118.5, y: 75.3))
        rectangle6Path.addCurve(to: CGPoint(x: 108.7, y: 89.3), controlPoint1: CGPoint(x: 118.5, y: 81.56), controlPoint2: CGPoint(x: 114.58, y: 87.16))
        rectangle6Path.addCurve(to: CGPoint(x: 94.34, y: 90.5), controlPoint1: CGPoint(x: 104.91, y: 90.5), controlPoint2: CGPoint(x: 101.38, y: 90.5))
        rectangle6Path.addLine(to: CGPoint(x: 57.5, y: 90.5))
        rectangle6Path.addCurve(to: CGPoint(x: 26.92, y: 89.45), controlPoint1: CGPoint(x: 57.8, y: 90.5), controlPoint2: CGPoint(x: 30.09, y: 90.5))
        rectangle6Path.addLine(to: CGPoint(x: 26.3, y: 89.3))
        rectangle6Path.addCurve(to: CGPoint(x: 16.5, y: 75.3), controlPoint1: CGPoint(x: 20.42, y: 87.16), controlPoint2: CGPoint(x: 16.5, y: 81.56))
        rectangle6Path.addCurve(to: CGPoint(x: 16.5, y: 74.5), controlPoint1: CGPoint(x: 16.5, y: 74.5), controlPoint2: CGPoint(x: 16.5, y: 74.5))
        rectangle6Path.addLine(to: CGPoint(x: 16.5, y: 74.5))
        rectangle6Path.addLine(to: CGPoint(x: 16.5, y: 74.5))
        rectangle6Path.addLine(to: CGPoint(x: 16.5, y: 73.7))
        rectangle6Path.addCurve(to: CGPoint(x: 26.3, y: 59.7), controlPoint1: CGPoint(x: 16.5, y: 67.44), controlPoint2: CGPoint(x: 20.42, y: 61.84))
        rectangle6Path.addCurve(to: CGPoint(x: 40.66, y: 58.5), controlPoint1: CGPoint(x: 30.09, y: 58.5), controlPoint2: CGPoint(x: 33.62, y: 58.5))
        rectangle6Path.addLine(to: CGPoint(x: 33.32, y: 58.5))
        rectangle6Path.addLine(to: CGPoint(x: 37.5, y: 58.5))
        rectangle6Path.close()
        strokeColor.setStroke()
        rectangle6Path.lineWidth = 7
        rectangle6Path.stroke()




        //// Triangle Drawing
        let trianglePath = UIBezierPath()
        trianglePath.move(to: CGPoint(x: 67.55, y: 6.41))
        trianglePath.addCurve(to: CGPoint(x: 82.74, y: 18.78), controlPoint1: CGPoint(x: 73.84, y: 6.41), controlPoint2: CGPoint(x: 80.32, y: 9.45))
        trianglePath.addCurve(to: CGPoint(x: 83.65, y: 37.24), controlPoint1: CGPoint(x: 85.16, y: 28.11), controlPoint2: CGPoint(x: 76.56, y: 33.51))
        trianglePath.addCurve(to: CGPoint(x: 97.46, y: 48.45), controlPoint1: CGPoint(x: 83.65, y: 37.24), controlPoint2: CGPoint(x: 93.61, y: 43.86))
        trianglePath.addLine(to: CGPoint(x: 104.5, y: 58.21))
        trianglePath.addLine(to: CGPoint(x: 31.34, y: 58.21))
        trianglePath.addCurve(to: CGPoint(x: 37.09, y: 48.45), controlPoint1: CGPoint(x: 31.34, y: 58.21), controlPoint2: CGPoint(x: 32.55, y: 54.06))
        trianglePath.addCurve(to: CGPoint(x: 51.37, y: 37.24), controlPoint1: CGPoint(x: 41.62, y: 42.83), controlPoint2: CGPoint(x: 47.09, y: 39.62))
        trianglePath.addCurve(to: CGPoint(x: 51.37, y: 18.78), controlPoint1: CGPoint(x: 56.94, y: 34.15), controlPoint2: CGPoint(x: 49.46, y: 26.2))
        trianglePath.addCurve(to: CGPoint(x: 67.55, y: 6.41), controlPoint1: CGPoint(x: 53.29, y: 11.37), controlPoint2: CGPoint(x: 61.19, y: 6.41))
        trianglePath.close()
        trianglePath.usesEvenOddFillRule = true
        fillColor2.setFill()
        trianglePath.fill()
        strokeColor.setStroke()
        trianglePath.lineWidth = 7
        trianglePath.miterLimit = 4
        trianglePath.stroke()


        //// Rectangle- 8 Drawing
        let rectangle8Path = UIBezierPath(roundedRect: CGRect(x: 10, y: 121, width: 21, height: 8), cornerRadius: 4)
        fillColor.setFill()
        rectangle8Path.fill()


        //// Rectangle- 10 Drawing
        let rectangle10Path = UIBezierPath(rect: CGRect(x: 107, y: 129, width: 8, height: 59))
        fillColor.setFill()
        rectangle10Path.fill()


        //// Rectangle- 11 Drawing
        let rectangle11Path = UIBezierPath()
        rectangle11Path.move(to: CGPoint(x: 107, y: 102.82))
        rectangle11Path.addCurve(to: CGPoint(x: 113, y: 110.2), controlPoint1: CGPoint(x: 110.19, y: 103.71), controlPoint2: CGPoint(x: 110.56, y: 104.95))
        rectangle11Path.addCurve(to: CGPoint(x: 114.98, y: 119.01), controlPoint1: CGPoint(x: 115.44, y: 115.46), controlPoint2: CGPoint(x: 114.98, y: 119.01))
        rectangle11Path.addCurve(to: CGPoint(x: 112, y: 122), controlPoint1: CGPoint(x: 114.99, y: 120.66), controlPoint2: CGPoint(x: 113.66, y: 122))
        rectangle11Path.addLine(to: CGPoint(x: 110, y: 122))
        rectangle11Path.addCurve(to: CGPoint(x: 107.52, y: 119.07), controlPoint1: CGPoint(x: 108.34, y: 122), controlPoint2: CGPoint(x: 107.38, y: 120.72))
        rectangle11Path.addCurve(to: CGPoint(x: 106.61, y: 113.53), controlPoint1: CGPoint(x: 107.52, y: 119.07), controlPoint2: CGPoint(x: 108.41, y: 119.41))
        rectangle11Path.addCurve(to: CGPoint(x: 101.8, y: 107.08), controlPoint1: CGPoint(x: 104.8, y: 107.66), controlPoint2: CGPoint(x: 101.7, y: 109.66))
        rectangle11Path.addCurve(to: CGPoint(x: 107, y: 102.82), controlPoint1: CGPoint(x: 101.89, y: 104.51), controlPoint2: CGPoint(x: 103.81, y: 101.93))
        rectangle11Path.close()
        rectangle11Path.usesEvenOddFillRule = true
        fillColor.setFill()
        rectangle11Path.fill()


        //// Rectangle- 13 Drawing
        let rectangle13Path = UIBezierPath(roundedRect: CGRect(x: 52, y: 70, width: 35, height: 8), cornerRadius: 4)
        fillColor.setFill()
        rectangle13Path.fill()


        //// Rectangle- 15 Drawing
        let rectangle15Path = UIBezierPath(roundedRect: CGRect(x: 8, y: 141, width: 15, height: 8), cornerRadius: 4)
        fillColor.setFill()
        rectangle15Path.fill()


        //// Rectangle- 17 Drawing
        let rectangle17Path = UIBezierPath(roundedRect: CGRect(x: 94, y: 70, width: 13, height: 8), cornerRadius: 4)
        fillColor.setFill()
        rectangle17Path.fill()


        //// Rectangle- 19 Drawing
        let rectangle19Path = UIBezierPath(roundedRect: CGRect(x: 8, y: 181, width: 15, height: 8), cornerRadius: 4)
        fillColor.setFill()
        rectangle19Path.fill()


        //// Rectangle- 21 Drawing
        let rectangle21Path = UIBezierPath(roundedRect: CGRect(x: 10, y: 161, width: 21, height: 8), cornerRadius: 4)
        fillColor.setFill()
        rectangle21Path.fill()


        //// Rectangle- 23 Drawing
        let rectangle23Path = UIBezierPath(roundedRect: CGRect(x: 10, y: 200, width: 21, height: 8), cornerRadius: 4)
        fillColor.setFill()
        rectangle23Path.fill()
        
        context.restoreGState()

    }




    @objc(BabyResizingBehavior)
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
