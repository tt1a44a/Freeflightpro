.class public Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;
.super Ljava/lang/Object;
.source "LynxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/lynx/LynxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LynxResult"
.end annotation


# instance fields
.field public change_of_scale:F

.field public frame_ts:J

.field public processTime:J

.field public quality:I

.field public status:I

.field public target_azimuth:F

.field public target_elevation:F

.field public target_height:F

.field public target_left:F

.field public target_top:F

.field public target_width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput p1, p0, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->status:I

    .line 350
    return-void
.end method
