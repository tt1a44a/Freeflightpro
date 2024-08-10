.class public final enum Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;
.super Ljava/lang/Enum;
.source "AudioSourceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMvAudioSourceInvalid:Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

.field public static final enum EMvAudioSourceMusic:Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

.field public static final enum EMvAudioSourceSync:Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

.field public static final enum EMvAudioSourceVoice:Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    const-string v1, "EMvAudioSourceInvalid"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;->EMvAudioSourceInvalid:Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    .line 17
    new-instance v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    const-string v1, "EMvAudioSourceVoice"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;->EMvAudioSourceVoice:Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    .line 21
    new-instance v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    const-string v1, "EMvAudioSourceSync"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;->EMvAudioSourceSync:Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    .line 25
    new-instance v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    const-string v1, "EMvAudioSourceMusic"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;->EMvAudioSourceMusic:Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    sget-object v1, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;->EMvAudioSourceInvalid:Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;->EMvAudioSourceVoice:Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;->EMvAudioSourceSync:Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;->EMvAudioSourceMusic:Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;->a:[Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;->a:[Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;

    return-object v0
.end method
