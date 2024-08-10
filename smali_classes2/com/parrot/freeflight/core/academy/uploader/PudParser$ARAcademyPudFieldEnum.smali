.class final enum Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;
.super Ljava/lang/Enum;
.source "PudParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/uploader/PudParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ARAcademyPudFieldEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_CONTROLLER_APPLICATION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_CONTROLLER_MODEL:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_CRASH:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_DATE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_DETAILS_DATA:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_DETAILS_HEADER:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_GPS_AVAILABLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_GPS_LATITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_GPS_LONGITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_HARDWARE_VERSION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_JUMP:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_PRODUCT_ACCESSORY:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_PRODUCT_ID:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_PRODUCT_NAME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_PRODUCT_STYLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_RUN_ORIGIN:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_RUN_TIME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_SERIAL_NUMBER:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_SOFTWARE_VERSION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_TOTAL_RUN_TIME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_UUID:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field public static final enum FIELD_VERSION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;",
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

    .line 442
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_VERSION"

    const-string v4, "version"

    invoke-direct {v2, v3, v1, v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_VERSION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 443
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_SOFTWARE_VERSION"

    const-string v4, "software_version"

    invoke-direct {v2, v3, v6, v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_SOFTWARE_VERSION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 444
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_HARDWARE_VERSION"

    const-string v4, "hardware_version"

    invoke-direct {v2, v3, v7, v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_HARDWARE_VERSION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 445
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_UUID"

    const-string v4, "uuid"

    invoke-direct {v2, v3, v8, v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_UUID:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 446
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_RUN_ORIGIN"

    const-string v4, "run_origin"

    invoke-direct {v2, v3, v9, v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_RUN_ORIGIN:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 447
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_CONTROLLER_MODEL"

    const/4 v4, 0x5

    const-string v5, "controller_model"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_CONTROLLER_MODEL:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 448
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_CONTROLLER_APPLICATION"

    const/4 v4, 0x6

    const-string v5, "controller_application"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_CONTROLLER_APPLICATION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 449
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_PRODUCT_STYLE"

    const/4 v4, 0x7

    const-string v5, "product_style"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_PRODUCT_STYLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 450
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_PRODUCT_ACCESSORY"

    const/16 v4, 0x8

    const-string v5, "product_accessory"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_PRODUCT_ACCESSORY:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 451
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_GPS_AVAILABLE"

    const/16 v4, 0x9

    const-string v5, "gps_available"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_GPS_AVAILABLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 452
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_GPS_LONGITUDE"

    const/16 v4, 0xa

    const-string v5, "gps_longitude"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_GPS_LONGITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 453
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_GPS_LATITUDE"

    const/16 v4, 0xb

    const-string v5, "gps_latitude"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_GPS_LATITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 454
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_SERIAL_NUMBER"

    const/16 v4, 0xc

    const-string v5, "serial_number"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_SERIAL_NUMBER:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 455
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_PRODUCT_ID"

    const/16 v4, 0xd

    const-string v5, "product_id"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_PRODUCT_ID:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 456
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_PRODUCT_NAME"

    const/16 v4, 0xe

    const-string v5, "product_name"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_PRODUCT_NAME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 457
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_DATE"

    const/16 v4, 0xf

    const-string v5, "date"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_DATE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 458
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_CRASH"

    const/16 v4, 0x10

    const-string v5, "crash"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_CRASH:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 459
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_JUMP"

    const/16 v4, 0x11

    const-string v5, "jump"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_JUMP:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 460
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_RUN_TIME"

    const/16 v4, 0x12

    const-string v5, "run_time"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_RUN_TIME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 461
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_TOTAL_RUN_TIME"

    const/16 v4, 0x13

    const-string v5, "total_run_time"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_TOTAL_RUN_TIME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 462
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_DETAILS_HEADER"

    const/16 v4, 0x14

    const-string v5, "details_headers"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_DETAILS_HEADER:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 463
    new-instance v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    const-string v3, "FIELD_DETAILS_DATA"

    const/16 v4, 0x15

    const-string v5, "details_data"

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_DETAILS_DATA:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 441
    const/16 v2, 0x16

    new-array v2, v2, [Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    sget-object v3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_VERSION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v3, v2, v1

    sget-object v3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_SOFTWARE_VERSION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v3, v2, v6

    sget-object v3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_HARDWARE_VERSION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v3, v2, v7

    sget-object v3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_UUID:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v3, v2, v8

    sget-object v3, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_RUN_ORIGIN:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_CONTROLLER_MODEL:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_CONTROLLER_APPLICATION:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_PRODUCT_STYLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_PRODUCT_ACCESSORY:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_GPS_AVAILABLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_GPS_LONGITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_GPS_LATITUDE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_SERIAL_NUMBER:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_PRODUCT_ID:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_PRODUCT_NAME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_DATE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_CRASH:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_JUMP:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x12

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_RUN_TIME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x13

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_TOTAL_RUN_TIME:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x14

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_DETAILS_HEADER:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    const/16 v3, 0x15

    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->FIELD_DETAILS_DATA:Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    aput-object v4, v2, v3

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->$VALUES:[Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    .line 477
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->lookup:Ljava/util/Map;

    .line 480
    invoke-static {}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->values()[Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    move-result-object v2

    array-length v3, v2

    .local v0, "d":Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 481
    sget-object v4, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
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
    .line 468
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 469
    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->value:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public static getFromValue(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 486
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 441
    const-class v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->$VALUES:[Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$ARAcademyPudFieldEnum;->value:Ljava/lang/String;

    return-object v0
.end method
