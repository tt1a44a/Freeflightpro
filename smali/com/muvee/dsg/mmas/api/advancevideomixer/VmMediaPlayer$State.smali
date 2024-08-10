.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;
.super Ljava/lang/Object;
.source "VmMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;
    }
.end annotation


# instance fields
.field a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->INIT:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    return-void
.end method


# virtual methods
.method public loop()Z
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PLAYING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->SEEKING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PAUSE:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
