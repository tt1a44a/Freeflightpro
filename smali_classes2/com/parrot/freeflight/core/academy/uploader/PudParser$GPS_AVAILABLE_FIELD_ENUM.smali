.class final enum Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;
.super Ljava/lang/Enum;
.source "PudParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/uploader/PudParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GPS_AVAILABLE_FIELD_ENUM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

.field public static final enum ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_AVAILABLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

.field public static final enum ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_MAX:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

.field public static final enum ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_NOT_PRESENT:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

.field public static final enum ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_PRESENT:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 434
    new-instance v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    const-string v1, "ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_NOT_PRESENT"

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_NOT_PRESENT:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    .line 435
    new-instance v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    const-string v1, "ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_PRESENT"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_PRESENT:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    .line 436
    new-instance v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    const-string v1, "ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_AVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_AVAILABLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    .line 437
    new-instance v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    const-string v1, "ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_MAX"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_MAX:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    .line 433
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_NOT_PRESENT:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_PRESENT:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_AVAILABLE:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->ARACADEMY_UPLOADER_GPS_AVAILABLE_FIELD_MAX:Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    aput-object v1, v0, v5

    sput-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->$VALUES:[Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 433
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 433
    const-class v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;
    .locals 1

    .prologue
    .line 433
    sget-object v0, Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->$VALUES:[Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/core/academy/uploader/PudParser$GPS_AVAILABLE_FIELD_ENUM;

    return-object v0
.end method
