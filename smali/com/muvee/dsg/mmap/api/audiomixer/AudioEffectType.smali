.class public final enum Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;
.super Ljava/lang/Enum;
.source "AudioEffectType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMvAudioEffectFade:Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;

.field public static final enum EMvAudioEffectNone:Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;

    const-string v1, "EMvAudioEffectNone"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;->EMvAudioEffectNone:Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;

    .line 11
    new-instance v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;

    const-string v1, "EMvAudioEffectFade"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;->EMvAudioEffectFade:Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;

    sget-object v1, Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;->EMvAudioEffectNone:Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;->EMvAudioEffectFade:Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;->a:[Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;->a:[Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffectType;

    return-object v0
.end method
