/*
 Navicat MySQL Data Transfer

 Source Server         : sa
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : sa

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 08/06/2022 15:25:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ls_dev_region
-- ----------------------------
DROP TABLE IF EXISTS `ls_dev_region`;
CREATE TABLE `ls_dev_region`  (
  `id` int(10) NOT NULL DEFAULT 0 COMMENT '地区编号',
  `parent_id` int(10) NOT NULL DEFAULT 0 COMMENT '父级地区编码',
  `level` tinyint(1) NOT NULL DEFAULT 0 COMMENT '等级 0-国家；1-省份；2-地级市；3-县区',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `short` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '简称',
  `city_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地区编码',
  `zip_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `gcj02_lng` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `gcj02_lat` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经度',
  `db09_lng` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `db09_lat` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经度',
  `remark1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注一',
  `remark2` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注二',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '地区表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ls_dev_region
-- ----------------------------
INSERT INTO `ls_dev_region` VALUES (110000, 100000, 1, 'ນະຄອນຫຼວງ', 'ນະຄອນຫຼວງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (110100, 110000, 2, 'ນະຄອນຫຼວງ', 'ນະຄອນຫຼວງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (110101, 110000, 3, 'ເມືອງ ຈັນທະບູລີ', 'ເມືອງ ຈັນທະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (110102, 110000, 3, 'ເມືອງ ໄຊເສດຖາ', 'ເມືອງ ໄຊເສດຖາ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (110103, 110000, 3, 'ເມືອງ ສີໂຄດຕະບອງ', 'ເມືອງ ສີໂຄດຕະບອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (110104, 110000, 3, 'ເມືອງ ສີສັດຕະນາກ', 'ເມືອງ ສີສັດຕະນາກ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (110105, 110000, 3, 'ເມືອງ ຫາດຊາຍຟອງ', 'ເມືອງ ຫາດຊາຍຟອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (110106, 110000, 3, 'ເມືອງ ນາຊາຍທອງ', 'ເມືອງ ນາຊາຍທອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (110107, 110000, 3, 'ເມືອງ ໄຊທານີ', 'ເມືອງ ໄຊທານີ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (110108, 110000, 3, 'ເມືອງ ສັງທອງ', 'ເມືອງ ສັງທອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (110109, 110000, 3, 'ເມືອງ ປາກງື່ມ', 'ເມືອງ ປາກງື່ມ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (120000, 100000, 1, 'ແຂວງຜົ້ງສາລີ', 'ແຂວງຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (120100, 120000, 2, 'ເມືອງ ບຸນໃຕ້', 'ເມືອງ ບຸນໃຕ້', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (120200, 120000, 2, 'ເມືອງ ຂວາ', 'ເມືອງ ຂວາ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (120300, 120000, 2, 'ເມືອງ ໃໝ່', 'ເມືອງ ໃໝ່', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (120400, 120000, 2, 'ເມືອງ ຍອດອູ', 'ເມືອງ ຍອດອູ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (120500, 120000, 2, 'ເມືອງ ຜົ້ງສາລີ', 'ເມືອງ ຜົ້ງສາລີ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (120600, 120000, 2, 'ເມືອງ ສຳພັນ', 'ເມືອງ ສຳພັນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (120700, 120000, 2, 'ເມືອງ ບຸນເໜືອ', 'ເມືອງ ບຸນເໜືອ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (130000, 100000, 1, 'ແຂວງຫຼວງນ້ຳທາ', 'ແຂວງຫຼວງນ້ຳທາ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (130100, 130000, 2, 'ເມືອງ ຫຼວງນໍ້າທາ', 'ເມືອງ ຫຼວງນໍ້າທາ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (130200, 130000, 2, 'ເມືອງ ສິງ', 'ເມືອງ ສິງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (130300, 130000, 2, 'ເມືອງ ລອງ', 'ເມືອງ ລອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (130400, 130000, 2, 'ເມືອງ ວຽງພູຄາ', 'ເມືອງ ວຽງພູຄາ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (130500, 130000, 2, 'ເມືອງ ນາແລ', 'ເມືອງ ນາແລ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (140000, 100000, 1, 'ແຂວງບໍ່ແກ້ວ', 'ແຂວງບໍ່ແກ້ວ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (140100, 140000, 2, 'ເມືອງ ຫ້ວຍຊາຍ', 'ເມືອງ ຫ້ວຍຊາຍ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (140200, 140000, 2, 'ເມືອງ ຕົ້ນເຜິ້ງ', 'ເມືອງ ຕົ້ນເຜິ້ງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (140300, 140000, 2, 'ເມືອງ ເມິງ', 'ເມືອງ ເມິງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (140400, 140000, 2, 'ເມືອງ ຜາອຸດົມ', 'ເມືອງ ຜາອຸດົມ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (140500, 140000, 2, 'ເມືອງ ປາກທາ', 'ເມືອງ ປາກທາ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (150000, 100000, 1, 'ແຂວງອຸດົມໄຊ', 'ແຂວງອຸດົມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (150100, 150000, 2, 'ເມືອງ ໄຊ', 'ເມືອງ ໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (150200, 150000, 2, 'ເມືອງ ຫລາ', 'ເມືອງ ຫລາ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (150300, 150000, 2, 'ເມືອງ ນາໝໍ້', 'ເມືອງ ນາໝໍ້', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (150400, 150000, 2, 'ເມືອງ ງາ', 'ເມືອງ ງາ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (150500, 150000, 2, 'ເມືອງ ແບ່ງ', 'ເມືອງ ແບ່ງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (150600, 150000, 2, 'ເມືອງ ຮຸນ', 'ເມືອງ ຮຸນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (150700, 150000, 2, 'ເມືອງ ປາກແບ່ງ', 'ເມືອງ ປາກແບ່ງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (160000, 100000, 1, 'ແຂວງຫລວງພະບາງ', 'ແຂວງຫລວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (160100, 160000, 2, 'ເມືອງ ຫຼວງພະບາງ', 'ເມືອງ ຫຼວງພະບາງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (160200, 160000, 2, 'ເມືອງ ຊຽງເງິນ', 'ເມືອງ ຊຽງເງິນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (160300, 160000, 2, 'ເມືອງ ນານ', 'ເມືອງ ນານ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (160400, 160000, 2, 'ເມືອງ ປາກອູ', 'ເມືອງ ປາກອູ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (160500, 160000, 2, 'ເມືອງ ນ້ຳບາກ', 'ເມືອງ ນ້ຳບາກ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (160600, 160000, 2, 'ເມືອງ ງອຍ', 'ເມືອງ ງອຍ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (160700, 160000, 2, 'ເມືອງ ປາກແຊງ', 'ເມືອງ ປາກແຊງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (160800, 160000, 2, 'ເມືອງ ໂພນໄຊ', 'ເມືອງ ໂພນໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (160900, 160000, 2, 'ເມືອງ ຈອມເພັດ', 'ເມືອງ ຈອມເພັດ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (161000, 160000, 2, 'ເມືອງ ວຽງຄຳ', 'ເມືອງ ວຽງຄຳ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (161100, 160000, 2, 'ເມືອງ ພູຄູນ', 'ເມືອງ ພູຄູນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (161200, 160000, 2, 'ເມືອງ ໂພນທອງ', 'ເມືອງ ໂພນທອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (170000, 100000, 1, 'ແຂວງໄຊຍະບູລີ', 'ແຂວງໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (170100, 170000, 2, 'ເມືອງ ບໍ່ແຕນ', 'ເມືອງ ບໍ່ແຕນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (170200, 170000, 2, 'ເມືອງ ຫົງສາ', 'ເມືອງ ຫົງສາ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (170300, 170000, 2, 'ເມືອງ ແກ່ນທ້າວ', 'ເມືອງ ແກ່ນທ້າວ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (170400, 170000, 2, 'ເມືອງ ຄອບ', 'ເມືອງ ຄອບ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (170500, 170000, 2, 'ເມືອງ ເງິນ', 'ເມືອງ ເງິນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (170600, 170000, 2, 'ເມືອງ ປາກລາຍ', 'ເມືອງ ປາກລາຍ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (170700, 170000, 2, 'ເມືອງ ພຽງ', 'ເມືອງ ພຽງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (170800, 170000, 2, 'ເມືອງ ທົ່ງມີໄຊ', 'ເມືອງ ທົ່ງມີໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (170900, 170000, 2, 'ເມືອງ ໄຊຍະບູລີ', 'ເມືອງ ໄຊຍະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (171000, 170000, 2, 'ເມືອງ ຊຽງຮ່ອນ', 'ເມືອງ ຊຽງຮ່ອນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (171100, 170000, 2, 'ເມືອງ ໄຊສະຖານ', 'ເມືອງ ໄຊສະຖານ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (180000, 100000, 1, 'ແຂວງຫົວພັນ', 'ແຂວງຫົວພັນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (180100, 180000, 2, 'ເມືອງ ຊຳເໜືອ', 'ເມືອງ ຊຳເໜືອ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (180200, 180000, 2, 'ເມືອງ ຊຽງຄໍ້', 'ເມືອງ ຊຽງຄໍ້', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (180300, 180000, 2, 'ເມືອງ ຮ້ຽມ', 'ເມືອງ ຮ້ຽມ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (180400, 180000, 2, 'ເມືອງ ວຽງໄຊ', 'ເມືອງ ວຽງໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (180500, 180000, 2, 'ເມືອງ ຫົວເມືອງ', 'ເມືອງ ຫົວເມືອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (180600, 180000, 2, 'ເມືອງ ຊຳໃຕ້', 'ເມືອງ ຊຳໃຕ້', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (180700, 180000, 2, 'ເມືອງ ສົບເບົາ', 'ເມືອງ ສົບເບົາ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (180800, 180000, 2, 'ເມືອງ ແອດ', 'ເມືອງ ແອດ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (180900, 180000, 2, 'ເມືອງ ກວັນ', 'ເມືອງ ກວັນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (181000, 180000, 2, 'ເມືອງ ຊ່ອນ', 'ເມືອງ ຊ່ອນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (190000, 100000, 1, 'ແຂວງຊຽງຂວາງ', 'ແຂວງຊຽງຂວາງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (190100, 190000, 2, 'ເມືອງ ແປກ', 'ເມືອງ ແປກ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (190200, 190000, 2, 'ເມືອງ ຄຳ', 'ເມືອງ ຄຳ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (190300, 190000, 2, 'ເມືອງ ໜອງແຮດ', 'ເມືອງ ໜອງແຮດ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (190400, 190000, 2, 'ເມືອງ ຄູນ', 'ເມືອງ ຄູນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (190500, 190000, 2, 'ເມືອງ ໝອກ', 'ເມືອງ ໝອກ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (190600, 190000, 2, 'ເມືອງ ພູກູດ', 'ເມືອງ ພູກູດ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (190700, 190000, 2, 'ເມືອງ ຜາໄຊ', 'ເມືອງ ຜາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (200000, 100000, 1, 'ແຂວງວຽງຈັນ', 'ແຂວງວຽງຈັນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (200100, 200000, 2, 'ເມືອງ ເຟືອງ', 'ເມືອງ ເຟືອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (200200, 200000, 2, 'ເມືອງ ຫີນເຫີບ', 'ເມືອງ ຫີນເຫີບ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (200300, 200000, 2, 'ເມືອງ ກາສີ', 'ເມືອງ ກາສີ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (200400, 200000, 2, 'ເມືອງ ແກ້ວອຸດົມ', 'ເມືອງ ແກ້ວອຸດົມ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (200500, 200000, 2, 'ເມືອງ ແມດ', 'ເມືອງ ແມດ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (200600, 200000, 2, 'ເມືອງ ໂພນໂຮງ', 'ເມືອງ ໂພນໂຮງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (200700, 200000, 2, 'ເມືອງ ທຸລະຄົມ', 'ເມືອງ ທຸລະຄົມ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (200800, 200000, 2, 'ເມືອງ  ວັງວຽງ', 'ເມືອງ  ວັງວຽງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (200900, 200000, 2, 'ເມືອງ ວຽງຄຳ', 'ເມືອງ ວຽງຄຳ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (201000, 200000, 2, 'ເມືອງ  ຊະນະຄາມ', 'ເມືອງ  ຊະນະຄາມ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (201100, 200000, 2, 'ເມືອງ ໝື່ນ', 'ເມືອງ ໝື່ນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (210000, 100000, 1, 'ແຂວງໄຊສົມບູນ', 'ແຂວງໄຊສົມບູນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (210100, 210000, 2, 'ເມືອງ ລ້ອງແຈ້ງ', 'ເມືອງ ລ້ອງແຈ້ງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (210200, 210000, 2, 'ເມືອງ ທ່າໂທມ', 'ເມືອງ ທ່າໂທມ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (210300, 210000, 2, 'ເມືອງ ອະນຸວົງ', 'ເມືອງ ອະນຸວົງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (210400, 210000, 2, 'ເມືອງ ລ້ອງຊານ', 'ເມືອງ ລ້ອງຊານ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (210500, 210000, 2, 'ເມືອງ ຮົ່ມ', 'ເມືອງ ຮົ່ມ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (220000, 100000, 1, 'ແຂວງບໍລິຄຳໄຊ', 'ແຂວງບໍລິຄຳໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (220100, 220000, 2, 'ເມືອງ ປາກຊັນ', 'ເມືອງ ປາກຊັນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (220200, 220000, 2, 'ເມືອງ ທ່າພະບາດ', 'ເມືອງ ທ່າພະບາດ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (220300, 220000, 2, 'ເມືອງ ປາກກະດິງ', 'ເມືອງ ປາກກະດິງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (220400, 220000, 2, 'ເມືອງ ຄຳເກີດ(ຫຼັກ20)', 'ເມືອງ ຄຳເກີດ(ຫຼັກ20)', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (220500, 220000, 2, 'ເມືອງ ບໍລິຄັນ', 'ເມືອງ ບໍລິຄັນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (220600, 220000, 2, 'ເມືອງ ວຽງທອງ', 'ເມືອງ ວຽງທອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (220700, 220000, 2, 'ເມືອງ ໄຊຈຳພອນ', 'ເມືອງ ໄຊຈຳພອນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (230000, 100000, 1, 'ແຂວງຄຳມ່ວນ', 'ແຂວງຄຳມ່ວນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (230100, 230000, 2, 'ເມືອງ ທ່າແຂກ', 'ເມືອງ ທ່າແຂກ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (230200, 230000, 2, 'ເມືອງ ມະຫາໄຊ', 'ເມືອງ ມະຫາໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (230300, 230000, 2, 'ເມືອງ ໜອງບົກ', 'ເມືອງ ໜອງບົກ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (230400, 230000, 2, 'ເມືອງ ຫີນບູນ', 'ເມືອງ ຫີນບູນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (230500, 230000, 2, 'ເມືອງ ຍົມມະລາດ', 'ເມືອງ ຍົມມະລາດ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (230600, 230000, 2, 'ເມືອງ ບົວລະພາ', 'ເມືອງ ບົວລະພາ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (230700, 230000, 2, 'ເມືອງ ນາກາຍ', 'ເມືອງ ນາກາຍ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (230800, 230000, 2, 'ເມືອງ ເຊບັ້ງໄຟ', 'ເມືອງ ເຊບັ້ງໄຟ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (230900, 230000, 2, 'ເມືອງ ໄຊບົວທອງ', 'ເມືອງ ໄຊບົວທອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (231000, 230000, 2, 'ເມືອງ ຄູນຄຳ', 'ເມືອງ ຄູນຄຳ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (240000, 100000, 1, 'ແຂວງສະຫວັນນະເຂດ', 'ແຂວງສະຫວັນນະເຂດ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (240100, 240000, 2, 'ເມືອງ ໄກສອນ', 'ເມືອງ ໄກສອນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (240200, 240000, 2, 'ເມືອງ ອຸທຸມພອນ', 'ເມືອງ ອຸທຸມພອນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (240300, 240000, 2, 'ເມືອງ ອາດສະພັງທອງ', 'ເມືອງ ອາດສະພັງທອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (240400, 240000, 2, 'ເມືອງ ພີນ', 'ເມືອງ ພີນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (240500, 240000, 2, 'ເມືອງ ເຊໂປນ', 'ເມືອງ ເຊໂປນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (240600, 240000, 2, 'ເມືອງ ນອງ', 'ເມືອງ ນອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (240700, 240000, 2, 'ເມືອງ ທ່າປາງທອງ', 'ເມືອງ ທ່າປາງທອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (240800, 240000, 2, 'ເມືອງ ສອງຄອນ', 'ເມືອງ ສອງຄອນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (240900, 240000, 2, 'ເມືອງ ຈຳພອນ', 'ເມືອງ ຈຳພອນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (241000, 240000, 2, 'ເມືອງ ຊົນນະບູລີ', 'ເມືອງ ຊົນນະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (241100, 240000, 2, 'ເມືອງ ໄຊບູລີ', 'ເມືອງ ໄຊບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (241200, 240000, 2, 'ເມືອງ ວິລະບູລີ', 'ເມືອງ ວິລະບູລີ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (241300, 240000, 2, 'ເມືອງ ອາດສະພອນ', 'ເມືອງ ອາດສະພອນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (241400, 240000, 2, 'ເມືອງ ໄຊພູທອງ', 'ເມືອງ ໄຊພູທອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (241500, 240000, 2, 'ເມືອງ ພະລານໄຊ', 'ເມືອງ ພະລານໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (250000, 100000, 1, 'ແຂວງສາລະວັນ', 'ແຂວງສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (250100, 250000, 2, 'ເມືອງ ສາລະວັນ', 'ເມືອງ ສາລະວັນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (250200, 250000, 2, 'ເມືອງ ລະຄອນເພັງ', 'ເມືອງ ລະຄອນເພັງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (250300, 250000, 2, 'ເມືອງ ວາປີ', 'ເມືອງ ວາປີ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (250400, 250000, 2, 'ເມືອງ ເລົ່າງາມ', 'ເມືອງ ເລົ່າງາມ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (250500, 250000, 2, 'ເມືອງ ຕຸ້ມລານ', 'ເມືອງ ຕຸ້ມລານ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (250600, 250000, 2, 'ເມືອງ ຕະໂອ້ຍ', 'ເມືອງ ຕະໂອ້ຍ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (250700, 250000, 2, 'ເມືອງ ຄົງເຊໂດນ', 'ເມືອງ ຄົງເຊໂດນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (250800, 250000, 2, 'ເມືອງ ສະມ້ວຍ', 'ເມືອງ ສະມ້ວຍ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (260000, 100000, 1, 'ແຂວງຈຳປາສັກ', 'ແຂວງຈຳປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (260100, 260000, 2, 'ເມືອງ ປາກເຊ', 'ເມືອງ ປາກເຊ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (260200, 260000, 2, 'ເມືອງ ຊະນະສົມບູນ', 'ເມືອງ ຊະນະສົມບູນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (260300, 260000, 2, 'ເມືອງ ບາຈຽງ', 'ເມືອງ ບາຈຽງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (260400, 260000, 2, 'ເມືອງ ປາກຊ່ອງ', 'ເມືອງ ປາກຊ່ອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (260500, 260000, 2, 'ເມືອງ ປະທຸມພອນ', 'ເມືອງ ປະທຸມພອນ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (260600, 260000, 2, 'ເມືອງ ໂພນທອງ', 'ເມືອງ ໂພນທອງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (260700, 260000, 2, 'ເມືອງ ຈຳປາສັກ', 'ເມືອງ ຈຳປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (260800, 260000, 2, 'ເມືອງ ສຸຂຸມມາ', 'ເມືອງ ສຸຂຸມມາ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (260900, 260000, 2, 'ເມືອງ ມູນລະປະໂມກ', 'ເມືອງ ມູນລະປະໂມກ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (261000, 260000, 2, 'ເມືອງ ໂຂງ', 'ເມືອງ ໂຂງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (270000, 100000, 1, 'ແຂວງຈຳປາສັກ', 'ແຂວງຈຳປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (270100, 270000, 2, 'ເມືອງ ທ່າແຕງ', 'ເມືອງ ທ່າແຕງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (270200, 270000, 2, 'ເມືອງ ລະມາມ', 'ເມືອງ ລະມາມ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (270300, 270000, 2, 'ເມືອງ ກະລຶມ', 'ເມືອງ ກະລຶມ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (270400, 270000, 2, 'ເມືອງ ດາກຈຶງ', 'ເມືອງ ດາກຈຶງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (280000, 100000, 1, 'ແຂວງຈຳປາສັກ', 'ແຂວງຈຳປາສັກ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (280100, 280000, 2, 'ເມືອງ ໄຊເຊດຖາ', 'ເມືອງ ໄຊເຊດຖາ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (280200, 280000, 2, 'ເມືອງ ສາມັກຄີໄຊ', 'ເມືອງ ສາມັກຄີໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (280300, 280000, 2, 'ເມືອງ ສະໜາມໄຊ', 'ເມືອງ ສະໜາມໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (280400, 280000, 2, 'ເມືອງ ຊານໄຊ', 'ເມືອງ ຊານໄຊ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `ls_dev_region` VALUES (280500, 280000, 2, 'ເມືອງ ພູວົງ', 'ເມືອງ ພູວົງ', NULL, NULL, NULL, NULL, NULL, NULL, '', '');

SET FOREIGN_KEY_CHECKS = 1;
