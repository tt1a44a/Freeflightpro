.class Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;
.super Ljava/lang/Object;
.source "LynxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/lynx/LynxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LynxInput"
.end annotation


# instance fields
.field data:[[B

.field drone_altitude:D

.field drone_latitude:D

.field drone_longitude:D

.field fov_h:F

.field fov_v:F

.field frame_idx:J

.field frame_ts:J

.field quaternionW:F

.field quaternionX:F

.field quaternionY:F

.field quaternionZ:F

.field target_altitude:D

.field target_latitude:D

.field target_longitude:D


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x3

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/arsdk/lynx/LynxManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager$1;

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;-><init>()V

    return-void
.end method
