.class public final enum Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;
.super Ljava/lang/Enum;
.source "VmAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INIT:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

.field public static final enum PAUSED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

.field public static final enum PLAYING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

.field public static final enum STOPED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

.field private static final synthetic a:[Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->INIT:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->PLAYING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->PAUSED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    const-string v1, "STOPED"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->STOPED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->INIT:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->PLAYING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->PAUSED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->STOPED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->a:[Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->a:[Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    return-object v0
.end method
