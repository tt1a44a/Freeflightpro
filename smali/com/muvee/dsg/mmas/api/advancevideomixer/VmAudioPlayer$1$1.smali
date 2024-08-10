.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1$1;
.super Ljava/lang/Object;
.source "VmAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a()V

    .line 102
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->d(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;)V

    .line 103
    return-void
.end method
