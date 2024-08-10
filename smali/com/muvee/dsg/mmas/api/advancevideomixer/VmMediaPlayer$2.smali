.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;
.super Ljava/lang/Object;
.source "VmMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->play(ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;ZJ)V
    .locals 1

    .prologue
    .line 669
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    iput-boolean p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;->a:Z

    iput-wide p3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->m(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)V

    .line 673
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->n(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$1;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 680
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->o(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$2;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$2;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 698
    return-void
.end method
