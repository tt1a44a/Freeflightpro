.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$1;
.super Ljava/lang/Object;
.source "VmVideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->createSurface(Ljava/lang/Object;)V

    .line 93
    return-void
.end method
