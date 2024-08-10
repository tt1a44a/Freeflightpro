.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$1;
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
    .line 799
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 802
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;

    iget-wide v2, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$3;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a(ZJ)V

    .line 803
    return-void
.end method
