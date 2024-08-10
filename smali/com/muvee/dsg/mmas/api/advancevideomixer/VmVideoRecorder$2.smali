.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$2;
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
    .line 98
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)V

    .line 107
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
