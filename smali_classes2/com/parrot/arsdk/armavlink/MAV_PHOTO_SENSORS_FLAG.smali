.class public final enum Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;
.super Ljava/lang/Enum;
.source "MAV_PHOTO_SENSORS_FLAG.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

.field public static final enum GREEN_BAND:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

.field public static final enum NEAR_IR_BAND:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

.field public static final enum RED_BAND:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

.field public static final enum RED_EDGE_BAND:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

.field public static final enum RGB:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

.field private static valuesList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 43
    new-instance v0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    const-string v1, "RGB"

    invoke-direct {v0, v1, v4, v3}, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->RGB:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    .line 45
    new-instance v0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    const-string v1, "GREEN_BAND"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->GREEN_BAND:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    const-string v1, "RED_BAND"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v5, v2}, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->RED_BAND:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    const-string v1, "RED_EDGE_BAND"

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v6, v2}, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->RED_EDGE_BAND:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    const-string v1, "NEAR_IR_BAND"

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v7, v2}, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->NEAR_IR_BAND:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    sget-object v1, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->RGB:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->GREEN_BAND:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->RED_BAND:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->RED_EDGE_BAND:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->NEAR_IR_BAND:Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    aput-object v1, v0, v7

    sput-object v0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->$VALUES:[Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->value:I

    .line 58
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->$VALUES:[Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/parrot/arsdk/armavlink/MAV_PHOTO_SENSORS_FLAG;->value:I

    return v0
.end method
