.class public final enum Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;
.super Ljava/lang/Enum;
.source "VmMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StateState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INIT:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

.field public static final enum PAUSE:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

.field public static final enum PLAYED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

.field public static final enum PLAYING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

.field public static final enum SEEKED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

.field public static final enum SEEKING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

.field private static final synthetic a:[Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->INIT:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PAUSE:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PLAYING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    const-string v1, "PLAYED"

    invoke-direct {v0, v1, v6}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PLAYED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    const-string v1, "SEEKING"

    invoke-direct {v0, v1, v7}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->SEEKING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    const-string v1, "SEEKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->SEEKED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->INIT:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PAUSE:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PLAYING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->PLAYED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->SEEKING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->SEEKED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->a:[Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->a:[Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    return-object v0
.end method
