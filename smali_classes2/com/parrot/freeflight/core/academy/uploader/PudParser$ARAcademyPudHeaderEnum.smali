.class final enum Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;
.super Ljava/lang/Enum;
.source "PudParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/uploader/PudParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ARAcademyPudHeaderEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_ALERT_STATE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_ALTITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_ANGLE_PHI:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_ANGLE_PSI:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_ANGLE_THETA:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_BATTERY_LEVEL:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_CONTROLLER_GPS_LATITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_CONTROLLER_GPS_LONGITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_FLIP_TYPE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_FLYING_STATE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_JUMP_TYPE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_PRODUCT_GPS_AVAILABLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_PRODUCT_GPS_LATITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_PRODUCT_GPS_LONGITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_PRODUCT_GPS_POSITION_ERROR:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_PRODUCT_GPS_SV_NUMBER:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_SPEED:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_SPEED_VX:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_SPEED_VY:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_SPEED_VZ:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_TIME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field public static final enum HEADER_WIFI_SIGNAL:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 492
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_TIME"

    const-string v4, "time"

    invoke-direct {v2, v3, v1, v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_TIME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 493
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_PRODUCT_GPS_AVAILABLE"

    const-string v4, "product_gps_available"

    invoke-direct {v2, v3, v6, v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_PRODUCT_GPS_AVAILABLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 494
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_PRODUCT_GPS_LONGITUDE"

    const-string v4, "product_gps_longitude"

    invoke-direct {v2, v3, v7, v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_PRODUCT_GPS_LONGITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 495
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_PRODUCT_GPS_LATITUDE"

    const-string v4, "product_gps_latitude"

    invoke-direct {v2, v3, v8, v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_PRODUCT_GPS_LATITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 496
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_PRODUCT_GPS_POSITION_ERROR"

    const-string v4, "product_gps_position_error"

    invoke-direct {v2, v3, v9, v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_PRODUCT_GPS_POSITION_ERROR:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 497
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_PRODUCT_GPS_SV_NUMBER"

    const/4 v4, 0x5

    const-string v5, "product_gps_sv_number"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_PRODUCT_GPS_SV_NUMBER:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 498
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_CONTROLLER_GPS_LONGITUDE"

    const/4 v4, 0x6

    const-string v5, "controller_gps_longitude"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_CONTROLLER_GPS_LONGITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 499
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_CONTROLLER_GPS_LATITUDE"

    const/4 v4, 0x7

    const-string v5, "controller_gps_latitude"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_CONTROLLER_GPS_LATITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 500
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_SPEED_VX"

    const/16 v4, 0x8

    const-string v5, "speed_vx"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_SPEED_VX:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 501
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_SPEED_VY"

    const/16 v4, 0x9

    const-string v5, "speed_vy"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_SPEED_VY:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 502
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_SPEED_VZ"

    const/16 v4, 0xa

    const-string v5, "speed_vz"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_SPEED_VZ:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 503
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_ANGLE_PHI"

    const/16 v4, 0xb

    const-string v5, "angle_phi"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_ANGLE_PHI:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 504
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_ANGLE_THETA"

    const/16 v4, 0xc

    const-string v5, "angle_theta"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_ANGLE_THETA:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 505
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_ANGLE_PSI"

    const/16 v4, 0xd

    const-string v5, "angle_psi"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_ANGLE_PSI:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 506
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_ALTITUDE"

    const/16 v4, 0xe

    const-string v5, "altitude"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_ALTITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 507
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_FLYING_STATE"

    const/16 v4, 0xf

    const-string v5, "flying_state"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_FLYING_STATE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 508
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_ALERT_STATE"

    const/16 v4, 0x10

    const-string v5, "alert_state"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_ALERT_STATE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 509
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_FLIP_TYPE"

    const/16 v4, 0x11

    const-string v5, "flip_type"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_FLIP_TYPE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 510
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_JUMP_TYPE"

    const/16 v4, 0x12

    const-string v5, "jump_type"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_JUMP_TYPE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 511
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_WIFI_SIGNAL"

    const/16 v4, 0x13

    const-string v5, "wifi_signal"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_WIFI_SIGNAL:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 512
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_SPEED"

    const/16 v4, 0x14

    const-string v5, "speed"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_SPEED:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 513
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    const-string v3, "HEADER_BATTERY_LEVEL"

    const/16 v4, 0x15

    const-string v5, "battery_level"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_BATTERY_LEVEL:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 491
    const/16 v2, 0x16

    new-array v2, v2, [Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    sget-object v3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_TIME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v3, v2, v1

    sget-object v3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_PRODUCT_GPS_AVAILABLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v3, v2, v6

    sget-object v3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_PRODUCT_GPS_LONGITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v3, v2, v7

    sget-object v3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_PRODUCT_GPS_LATITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v3, v2, v8

    sget-object v3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_PRODUCT_GPS_POSITION_ERROR:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_PRODUCT_GPS_SV_NUMBER:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_CONTROLLER_GPS_LONGITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_CONTROLLER_GPS_LATITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_SPEED_VX:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_SPEED_VY:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_SPEED_VZ:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_ANGLE_PHI:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_ANGLE_THETA:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_ANGLE_PSI:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_ALTITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_FLYING_STATE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_ALERT_STATE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_FLIP_TYPE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x12

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_JUMP_TYPE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x13

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_WIFI_SIGNAL:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x14

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_SPEED:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x15

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->HEADER_BATTERY_LEVEL:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    aput-object v4, v2, v3

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->$VALUES:[Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    .line 527
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->lookup:Ljava/util/Map;

    .line 530
    invoke-static {}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->values()[Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    move-result-object v2

    array-length v3, v2

    .local v0, "d":Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 531
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 518
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 519
    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->value:Ljava/lang/String;

    .line 520
    return-void
.end method

.method public static getFromValue(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 536
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 491
    const-class v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->$VALUES:[Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudHeaderEnum;->value:Ljava/lang/String;

    return-object v0
.end method
