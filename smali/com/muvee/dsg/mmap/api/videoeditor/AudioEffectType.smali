.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;
.super Ljava/lang/Enum;
.source "AudioEffectType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMVVEAudioEffectFade:Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

.field public static final enum EMVVEAudioEffectMax:Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

.field public static final enum EMVVEAudioEffectNone:Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    const-string v1, "EMVVEAudioEffectNone"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;->EMVVEAudioEffectNone:Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    .line 17
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    const-string v1, "EMVVEAudioEffectFade"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;->EMVVEAudioEffectFade:Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    .line 21
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    const-string v1, "EMVVEAudioEffectMax"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;->EMVVEAudioEffectMax:Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;->EMVVEAudioEffectNone:Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;->EMVVEAudioEffectFade:Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;->EMVVEAudioEffectMax:Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectType;

    return-object v0
.end method
