.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2$1;
.super Ljava/lang/Object;
.source "VmMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 817
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a()V

    .line 818
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->l(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    move-result-object v1

    monitor-enter v1

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->l(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    move-result-object v0

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->INIT:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    iput-object v2, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    .line 820
    monitor-exit v1

    .line 821
    return-void

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
