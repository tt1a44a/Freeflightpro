.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;
.super Ljava/lang/Object;
.source "VmTransitionFrame.java"

# interfaces
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;


# instance fields
.field private a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

.field private b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

.field private c:Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;

.field private d:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

.field private e:F


# direct methods
.method public constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    .line 25
    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    .line 26
    return-void
.end method


# virtual methods
.method public getTextureInfo()Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->getTextureInfo()Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;

    move-result-object v0

    return-object v0
.end method

.method public isFrameReady()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->isFrameReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->isFrameReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->pause()V

    .line 61
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->pause()V

    .line 62
    return-void
.end method

.method public prepare()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x200

    .line 42
    const-string v0, "com.muvee.dsg.mmas.api.advancevideomixer.VmTransitionFrame"

    const-string v1, "::prepare:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;

    invoke-direct {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;

    .line 45
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;

    invoke-virtual {v0, v2, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->create(II)V

    .line 47
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;->EXTERNAL:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->validate()V

    .line 50
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;

    invoke-virtual {v0, v2, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->bind(II)V

    .line 51
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    invoke-interface {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->getTextureInfo()Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->e:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->drawFrame(Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$DrawFrameHandler;F)V

    .line 53
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    invoke-interface {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->getTextureInfo()Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;

    move-result-object v1

    iget v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->e:F

    invoke-virtual {v0, v1, v4, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->drawFrame(Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$DrawFrameHandler;F)V

    .line 55
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->unBind()V

    .line 56
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->resume()V

    .line 67
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->resume()V

    .line 68
    return-void
.end method

.method public resumeAfter(J)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public setFactor(F)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTransitionFrame;->e:F

    .line 72
    return-void
.end method
