.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;
.super Ljava/lang/Object;
.source "VmMediaEditorOld.java"

# interfaces
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$DrawFrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->drawFrames(Ljava/util/List;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

.field final synthetic b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

.field final synthetic c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;

    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    iput-object p3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeSetVPMatrix([F[F)V
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 398
    invoke-static {p1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 400
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    iget v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    iget v1, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    invoke-static {p1, v2, v0, v1, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 401
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    iget v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    iget v1, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    invoke-static {p1, v2, v0, v1, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 403
    invoke-static {p2, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 405
    aget v0, p2, v5

    neg-float v0, v0

    aput v0, p2, v5

    .line 406
    aget v0, p2, v6

    sub-float v0, v3, v0

    aput v0, p2, v6

    .line 408
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    iget v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    iget v1, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    invoke-static {p2, v2, v0, v1, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 410
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    iget v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$2;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;

    iget v1, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    invoke-static {p2, v2, v0, v1, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 416
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-static {p2, v2, v3, v3, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_0
.end method
