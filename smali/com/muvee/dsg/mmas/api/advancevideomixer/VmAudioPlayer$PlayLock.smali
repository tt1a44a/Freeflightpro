.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;
.super Ljava/lang/Object;
.source "VmAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayLock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;
    }
.end annotation


# instance fields
.field private a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->INIT:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    return-object v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    return-object p1
.end method
