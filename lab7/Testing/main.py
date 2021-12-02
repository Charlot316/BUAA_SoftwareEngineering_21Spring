import unittest

from White import Triangle
from Black import CheckId


class MyTest(unittest.TestCase):
    # 编写测试用例，记得要以t开头，例：test
    def testTriangle1(self):
        # 调用内部的测试方法，如：assertEqual,assertNotEqual 等
        self.assertEqual(Triangle.triangle("3", 1, 2), "not a triangle!")

    def testTriangle2(self):
        self.assertEqual(Triangle.triangle(10001, 10002, 10003), "not a triangle!")

    def testTriangle3(self):
        self.assertEqual(Triangle.triangle(2, 2, 2), "equilateral triangle!")

    def testTriangle4(self):
        self.assertEqual(Triangle.triangle(3, 3, 2), "isosceles triangle!")

    def testTriangle5(self):
        self.assertEqual(Triangle.triangle(3, 4, 5), "regular triangle!")

    def testIdcorrect1(self):
        self.assertEqual(CheckId.Black('888888200102131233').exec(), 1)

    def testIdcorrect2(self):
        self.assertEqual(CheckId.Black('88888820000229123X').exec(), 1)

    def testIdcorrect3(self):
        self.assertEqual(CheckId.Black('888888200001311235').exec(), 1)

    def testIdcorrect4(self):
        self.assertEqual(CheckId.Black('888888200004301235').exec(), 1)

    def testIdcorrect5(self):
        self.assertEqual(CheckId.Black('888888200001021019').exec(), 1)

    def testIdcorrect6(self):
        self.assertEqual(CheckId.Black('888888200001021027').exec(), 1)

    def testIdcorrect7(self):
        self.assertEqual(CheckId.Black('888888200001021035').exec(), 1)

    def testIdcorrect8(self):
        self.assertEqual(CheckId.Black('888888200001021043').exec(), 1)

    def testIdcorrect9(self):
        self.assertEqual(CheckId.Black('888888200001021051').exec(), 1)

    def testIdcorrect10(self):
        self.assertEqual(CheckId.Black('88888820000102106X').exec(), 1)

    def testIdcorrect11(self):
        self.assertEqual(CheckId.Black('888888200001021078').exec(), 1)

    def testIdcorrect12(self):
        self.assertEqual(CheckId.Black('888888200001021086').exec(), 1)

    def testIdcorrect13(self):
        self.assertEqual(CheckId.Black('888888200001021094').exec(), 1)

    def testIdcorrect14(self):
        self.assertEqual(CheckId.Black('888888200001021000').exec(), 1)

    def testIdcorrect15(self):
        self.assertEqual(CheckId.Black('888888200001021262').exec(), 1)

    def testIdcorrect16(self):
        self.assertEqual(CheckId.Black('88888820000102106x').exec(), 1)

    def testIdincorrect1(self):
        self.assertEqual(CheckId.Black('X88888200102131234').exec(), 0)

    def testIdincorrect2(self):
        self.assertEqual(CheckId.Black('888888200100011238').exec(), 0)

    def testIdincorrect3(self):
        self.assertEqual(CheckId.Black('888888200113011237').exec(), 0)

    def testIdincorrect4(self):
        self.assertEqual(CheckId.Black('888888210002001238').exec(), 0)

    def testIdincorrect5(self):
        self.assertEqual(CheckId.Black('888888210002291239').exec(), 0)

    def testIdincorrect6(self):
        self.assertEqual(CheckId.Black('888888200402001238').exec(), 0)

    def testIdincorrect7(self):
        self.assertEqual(CheckId.Black('888888200402301230').exec(), 0)

    def testIdincorrect8(self):
        self.assertEqual(CheckId.Black('888888200401001236').exec(), 0)

    def testIdincorrect9(self):
        self.assertEqual(CheckId.Black('88888820040132123X').exec(), 0)

    def testIdincorrect10(self):
        self.assertEqual(CheckId.Black('88888820040300123X').exec(), 0)

    def testIdincorrect11(self):
        self.assertEqual(CheckId.Black('888888200403321233').exec(), 0)

    def testIdincorrect12(self):
        self.assertEqual(CheckId.Black('888888200405001233').exec(), 0)

    def testIdincorrect13(self):
        self.assertEqual(CheckId.Black('888888200405321237').exec(), 0)

    def testIdincorrect14(self):
        self.assertEqual(CheckId.Black('888888200407001237').exec(), 0)

    def testIdincorrect15(self):
        self.assertEqual(CheckId.Black('888888200407321230').exec(), 0)

    def testIdincorrect16(self):
        self.assertEqual(CheckId.Black('888888200408001239').exec(), 0)

    def testIdincorrect17(self):
        self.assertEqual(CheckId.Black('888888200408321232').exec(), 0)

    def testIdincorrect18(self):
        self.assertEqual(CheckId.Black('888888200410001238').exec(), 0)

    def testIdincorrect19(self):
        self.assertEqual(CheckId.Black('888888200410321231').exec(), 0)

    def testIdincorrect20(self):
        self.assertEqual(CheckId.Black('888888200412001231').exec(), 0)

    def testIdincorrect21(self):
        self.assertEqual(CheckId.Black('888888200412321235').exec(), 0)

    def testIdincorrect22(self):
        self.assertEqual(CheckId.Black('888888200404001231').exec(), 0)

    def testIdincorrect23(self):
        self.assertEqual(CheckId.Black('88888820040431123X').exec(), 0)

    def testIdincorrect24(self):
        self.assertEqual(CheckId.Black('888888200406001235').exec(), 0)

    def testIdincorrect25(self):
        self.assertEqual(CheckId.Black('888888200406311233').exec(), 0)

    def testIdincorrect26(self):
        self.assertEqual(CheckId.Black('888888200409001230').exec(), 0)

    def testIdincorrect27(self):
        self.assertEqual(CheckId.Black('888888200409311239').exec(), 0)

    def testIdincorrect28(self):
        self.assertEqual(CheckId.Black('88888820041100123X').exec(), 0)

    def testIdincorrect29(self):
        self.assertEqual(CheckId.Black('888888200411311238').exec(), 0)

    def testIdincorrect30(self):
        self.assertEqual(CheckId.Black('888888100001021231').exec(), 0)

    def testIdincorrect31(self):
        self.assertEqual(CheckId.Black('888888110001021232').exec(), 0)

    def testIdincorrect32(self):
        self.assertEqual(CheckId.Black('888888200001021011').exec(), 0)

    def testIdincorrect33(self):
        self.assertEqual(CheckId.Black('888888200001021022').exec(), 0)

    def testIdincorrect34(self):
        self.assertEqual(CheckId.Black('888888200001021033').exec(), 0)

    def testIdincorrect35(self):
        self.assertEqual(CheckId.Black('888888200001021044').exec(), 0)

    def testIdincorrect36(self):
        self.assertEqual(CheckId.Black('888888200001021055').exec(), 0)

    def testIdincorrect37(self):
        self.assertEqual(CheckId.Black('888888200001021066').exec(), 0)

    def testIdincorrect38(self):
        self.assertEqual(CheckId.Black('888888200001021077').exec(), 0)

    def testIdincorrect39(self):
        self.assertEqual(CheckId.Black('888888200001021088').exec(), 0)

    def testIdincorrect40(self):
        self.assertEqual(CheckId.Black('888888200001021099').exec(), 0)

    def testIdincorrect41(self):
        self.assertEqual(CheckId.Black('88888820000102100X').exec(), 0)

    def testIdincorrect42(self):
        self.assertEqual(CheckId.Black('888888200001021260').exec(), 0)
        pass


# 运行测试
if __name__ == '__main__':
    unittest.main()
