Ремикс, ремейк, форк, или как там это называется 3D-принтера Smartrap Core v.1.2 (https://www.youmagine.com/designs/smartcore). Основная идея - использование 15-миллиметрового алюминиевого квадрата в качестве рамы. 

Надо делать боковые стенки. Как минимум с боков, а лучше еще и сзади и снизу и вообще все закрывать.

Что касается прошивки: взят релиз Marlin, актуальный на ноябрь 2015. Настроен на CoreXY, 190x190x190, по X и Y ремни GT2, на Z шпилька М5, экструдер МК8, все драйверы 1/16. Плюс Reprap Discount Full Graphic Controller.

Девайсина работает, обзор: http://3dtoday.ru/blogs/eta4ever/kubocore-my-variation-smartcore/


Remix, remake or fork of Smartrap Core v.1.2 (https://www.youmagine.com/designs/smartcore).

----

Frame - уголки для сборки рамы из люминя.  Frame corners.

XY - переделанные крепления двигателей и роликов XY. Modified XY motors and rollers mounts. xy_left, xy_right, xy2_left_right


Z - переделанные детали Z. Под шпильку, из предыдущей версии Smartrap Core 1.01, с переделками под TR8x8. Modified Z parts, taken from previous 1.01 (threaded) version of Smartrap core, adapted for TR8x8 nut and bolt. z_carriage, z_top, z_bottom.


Unmodified - не затронутые переделками оригинальные детали, выгруженные из OpenJSCAD и пропущенные через netfabb для Slic3r. Untouched parts exported from OpenJSCAD and repaired in netfabb for Slic3r.

Алярма: Y Axis из Unmodified печатается с поддержкой, чтобы горизонтальные разрезы получились. Ну, они потом получаются, ножом и надфилем. Или можно стоя, но тоже с поддержкой под зажим линейного подшипника. 