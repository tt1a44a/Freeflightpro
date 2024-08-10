.class Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$9;
.super Ljava/lang/Object;
.source "AdvanceVideoMixer.java"

# interfaces
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

.field final synthetic b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$9;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$9;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$9;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->setOnCompleListener(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;)V

    .line 442
    const-string v0, "AdvanceVideoMixer.GL_THREAD"

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$9$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$9$1;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$9;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 465
    return-void
.end method
