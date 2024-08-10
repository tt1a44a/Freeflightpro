.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$2;
.super Ljava/lang/Object;
.source "VmMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->b()V

    .line 686
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->p(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$2$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$2$1;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$2;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 694
    return-void
.end method
