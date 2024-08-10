.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$4;
.super Ljava/lang/Object;
.source "VmMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->resumeAfter(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)V
    .locals 0

    .prologue
    .line 901
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$4;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$4;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 904
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$4;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->resume()V

    .line 905
    return-void
.end method
