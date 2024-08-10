.class public final enum Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;
.super Ljava/lang/Enum;
.source "ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_10000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_2300:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_2500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_2750:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_3000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_3250:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_3500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_4000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_4500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_5000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_5500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_6000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_6500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_7000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_7500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_8000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_8500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_9000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum T_9500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field public static final enum UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;",
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
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "UNKNOWN_ENUM_VALUE"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 43
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_2300"

    const-string v2, "2300 K."

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_2300:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 45
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_2500"

    const-string v2, "2500 K."

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_2500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_2750"

    const-string v2, "2750 K."

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_2750:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_3000"

    const-string v2, "3000 K."

    invoke-direct {v0, v1, v9, v8, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_3000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_3250"

    const/4 v2, 0x5

    const-string v3, "3250 K."

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_3250:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 53
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_3500"

    const/4 v2, 0x6

    const/4 v3, 0x5

    const-string v4, "3500 K."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_3500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 55
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_4000"

    const/4 v2, 0x7

    const/4 v3, 0x6

    const-string v4, "4000 K."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_4000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 57
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_4500"

    const/16 v2, 0x8

    const/4 v3, 0x7

    const-string v4, "4500 K."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_4500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 59
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_5000"

    const/16 v2, 0x9

    const/16 v3, 0x8

    const-string v4, "5000 K."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_5000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 61
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_5500"

    const/16 v2, 0xa

    const/16 v3, 0x9

    const-string v4, "5500 K."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_5500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 63
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_6000"

    const/16 v2, 0xb

    const/16 v3, 0xa

    const-string v4, "6000 K."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_6000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 65
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_6500"

    const/16 v2, 0xc

    const/16 v3, 0xb

    const-string v4, "6500 K."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_6500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 67
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_7000"

    const/16 v2, 0xd

    const/16 v3, 0xc

    const-string v4, "7000 K."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_7000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 69
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_7500"

    const/16 v2, 0xe

    const/16 v3, 0xd

    const-string v4, "7500 K."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_7500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 71
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_8000"

    const/16 v2, 0xf

    const/16 v3, 0xe

    const-string v4, "8000 K."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_8000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 73
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_8500"

    const/16 v2, 0x10

    const/16 v3, 0xf

    const-string v4, "8500 K."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_8500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 75
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_9000"

    const/16 v2, 0x11

    const/16 v3, 0x10

    const-string v4, "9000 K."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_9000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 77
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_9500"

    const/16 v2, 0x12

    const/16 v3, 0x11

    const-string v4, "9500 K."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_9500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 79
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    const-string v1, "T_10000"

    const/16 v2, 0x13

    const/16 v3, 0x12

    const-string v4, "10000 K."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_10000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_2300:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_2500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_2750:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v1, v0, v8

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_3000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_3250:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_3500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_4000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_4500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_5000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_5500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_6000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_6500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_7000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_7500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_8000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_8500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_9000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_9500:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->T_10000:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->value:I

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->comment:Ljava/lang/String;

    .line 89
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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->value:I

    .line 93
    iput-object p4, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->comment:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 110
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 111
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    move-result-object v2

    .line 112
    .local v2, "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->valuesList:Ljava/util/HashMap;

    .line 113
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 114
    .local v0, "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 118
    .local v1, "retVal":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;
    if-nez v1, :cond_1

    .line 119
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    .line 121
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_CAMERA_WHITE_BALANCE_TEMPERATURE_ENUM;->comment:Ljava/lang/String;

    .line 131
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
