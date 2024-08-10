.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;
.super Ljava/lang/Object;
.source "VmMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->b()V

    .line 815
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->p(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2$1;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 823
    return-void
.end method
