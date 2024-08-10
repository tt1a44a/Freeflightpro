.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$1;
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
    .line 673
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 676
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;

    iget-boolean v1, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;->a:Z

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;

    iget-wide v2, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$2;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a(ZJ)V

    .line 677
    return-void
.end method
