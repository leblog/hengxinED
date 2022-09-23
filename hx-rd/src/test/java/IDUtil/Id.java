package IDUtil;

import cn.hutool.core.util.IdUtil;

public class Id {
    public static void main(String[] args) {

        System.out.println("1 = " + IdUtil.nanoId());
        System.out.println("2 = " + "C29N"+IdUtil.fastSimpleUUID().toUpperCase());
        System.out.println("3 = " + IdUtil.getSnowflakeNextIdStr());
        System.out.println("4 = " + IdUtil.getSnowflakeNextId());
        System.out.println("5 = " + IdUtil.objectId());
        System.out.println("6 = " + IdUtil.randomUUID());
        System.out.println("7 = " + IdUtil.nanoId(36));
    }
}
