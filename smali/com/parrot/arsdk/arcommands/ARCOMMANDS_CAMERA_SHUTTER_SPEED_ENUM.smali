.class public final enum Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;
.super Ljava/lang/Enum;
.source "ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_10:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_100:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_1000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_10000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_15:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_160:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_1600:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_1_5:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_200:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_2000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_25:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_3:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_320:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_3200:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_4:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_40:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_400:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_4000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_50:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_6:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_640:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_6400:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_8:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_80:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_800:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum SHUTTER_1_OVER_8000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field public static final enum UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final comment:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "UNKNOWN_ENUM_VALUE"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 43
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_10000"

    const-string v2, "1/10000 sec."

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_10000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 45
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_8000"

    const-string v2, "1/8000 sec."

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_8000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_6400"

    const-string v2, "1/6400 sec."

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_6400:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_4000"

    const-string v2, "1/4000 sec."

    invoke-direct {v0, v1, v9, v8, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_4000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_3200"

    const/4 v2, 0x5

    const-string v3, "1/3200 sec."

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_3200:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 53
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_2000"

    const/4 v2, 0x6

    const/4 v3, 0x5

    const-string v4, "1/2000 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_2000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 55
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_1600"

    const/4 v2, 0x7

    const/4 v3, 0x6

    const-string v4, "1/1600 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_1600:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 57
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_1000"

    const/16 v2, 0x8

    const/4 v3, 0x7

    const-string v4, "1/1000 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_1000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 59
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_800"

    const/16 v2, 0x9

    const/16 v3, 0x8

    const-string v4, "1/800 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_800:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 61
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_640"

    const/16 v2, 0xa

    const/16 v3, 0x9

    const-string v4, "1/640 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_640:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 63
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_400"

    const/16 v2, 0xb

    const/16 v3, 0xa

    const-string v4, "1/400 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_400:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 65
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_320"

    const/16 v2, 0xc

    const/16 v3, 0xb

    const-string v4, "1/320 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_320:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 67
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_200"

    const/16 v2, 0xd

    const/16 v3, 0xc

    const-string v4, "1/200 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_200:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 69
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_160"

    const/16 v2, 0xe

    const/16 v3, 0xd

    const-string v4, "1/160 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_160:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 71
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_100"

    const/16 v2, 0xf

    const/16 v3, 0xe

    const-string v4, "1/100 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_100:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 73
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_80"

    const/16 v2, 0x10

    const/16 v3, 0xf

    const-string v4, "1/80 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_80:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 75
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_50"

    const/16 v2, 0x11

    const/16 v3, 0x10

    const-string v4, "1/50 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_50:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 77
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_40"

    const/16 v2, 0x12

    const/16 v3, 0x11

    const-string v4, "1/40 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_40:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 79
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_25"

    const/16 v2, 0x13

    const/16 v3, 0x12

    const-string v4, "1/25 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_25:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 81
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_15"

    const/16 v2, 0x14

    const/16 v3, 0x13

    const-string v4, "1/15 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_15:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 83
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_10"

    const/16 v2, 0x15

    const/16 v3, 0x14

    const-string v4, "1/10 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_10:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 85
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_8"

    const/16 v2, 0x16

    const/16 v3, 0x15

    const-string v4, "1/8 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_8:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 87
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_6"

    const/16 v2, 0x17

    const/16 v3, 0x16

    const-string v4, "1/6 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_6:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 89
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_4"

    const/16 v2, 0x18

    const/16 v3, 0x17

    const-string v4, "1/4 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_4:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 91
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_3"

    const/16 v2, 0x19

    const/16 v3, 0x18

    const-string v4, "1/3 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_3:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 93
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_2"

    const/16 v2, 0x1a

    const/16 v3, 0x19

    const-string v4, "1/2 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 95
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1_OVER_1_5"

    const/16 v2, 0x1b

    const/16 v3, 0x1a

    const-string v4, "1/1.5 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_1_5:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 97
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    const-string v1, "SHUTTER_1"

    const/16 v2, 0x1c

    const/16 v3, 0x1b

    const-string v4, "1 sec."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 39
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_10000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_8000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_6400:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v1, v0, v8

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_4000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_3200:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_2000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_1600:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_1000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_800:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_640:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_400:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_320:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_200:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_160:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_100:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_80:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_50:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_40:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_25:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_15:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_10:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_8:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_6:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_4:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_3:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1_OVER_1_5:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->SHUTTER_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->value:I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->comment:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->value:I

    .line 111
    iput-object p4, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->comment:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 128
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 129
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    move-result-object v2

    .line 130
    .local v2, "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->valuesList:Ljava/util/HashMap;

    .line 131
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 132
    .local v0, "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 136
    .local v1, "retVal":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;
    if-nez v1, :cond_1

    .line 137
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    .line 139
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_SHUTTER_SPEED_ENUM;->comment:Ljava/lang/String;

    .line 149
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
