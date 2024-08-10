.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$2;
.super Ljava/lang/Object;
.source "VmMediaPlayer.java"

# interfaces
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$DrawFrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;FF)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$2;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iput p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$2;->a:F

    iput p3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$2;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeSetVPMatrix([F[F)V
    .locals 7

    .prologue
    const/16 v2, 0xd

    const/4 v1, 0x5

    const v6, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 571
    invoke-static {p1, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 572
    invoke-static {p2, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 573
    aget v0, p2, v1

    neg-float v0, v0

    aput v0, p2, v1

    .line 574
    const/high16 v0, 0x3f800000    # 1.0f

    aget v1, p2, v2

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 575
    const v0, 0x3f4ccccd    # 0.8f

    const/high16 v1, -0x40800000    # -1.0f

    const v2, 0x3e4ccccd    # 0.2f

    iget v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$2;->a:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$2;->b:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {p1, v4, v0, v1, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 576
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$2;->a:F

    mul-float/2addr v0, v6

    iget v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$2;->b:F

    div-float/2addr v0, v1

    invoke-static {p1, v4, v6, v0, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 579
    return-void
.end method
