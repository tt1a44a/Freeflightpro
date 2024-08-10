.class Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;
.super Ljava/lang/Object;
.source "AdvanceVideoMixer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->clearSurface(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/SurfaceHolder;

.field final synthetic b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;->a:Landroid/view/SurfaceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 824
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;->a:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->createSurface(Ljava/lang/Object;)V

    .line 825
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;->a:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->makeCurrent(Ljava/lang/Object;)V

    .line 826
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 827
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 829
    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 830
    invoke-static {}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->clearFrame()V

    .line 831
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;->a:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->swapBuffers(Ljava/lang/Object;)Z

    .line 832
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$2;->a:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->destroySurface(Ljava/lang/Object;)V

    .line 833
    return-void
.end method
