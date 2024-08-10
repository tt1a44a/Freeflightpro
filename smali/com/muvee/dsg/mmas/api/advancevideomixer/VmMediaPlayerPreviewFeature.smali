.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;
.super Ljava/lang/Object;
.source "VmMediaPlayerPreviewFeature.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public enableRotation:Z

.field public flip:Z

.field public rorate180:Z

.field public rotation:I

.field public zoomOrLetterBox:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->zoomOrLetterBox:Z

    .line 8
    iput-boolean v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->rorate180:Z

    .line 9
    iput-boolean v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->flip:Z

    .line 10
    iput-boolean v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->enableRotation:Z

    .line 11
    iput v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->rotation:I

    return-void
.end method
