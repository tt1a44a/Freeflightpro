.class final enum Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;
.super Ljava/lang/Enum;
.source "AudioWaveFormGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

.field public static final enum b:Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

.field public static final enum c:Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

.field private static final synthetic d:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;->a:Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    new-instance v0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    const-string v1, "UNINIT"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;->b:Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    new-instance v0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    const-string v1, "GENERATE"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;->c:Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    sget-object v1, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;->a:Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;->b:Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;->c:Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;->d:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;->d:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    return-object v0
.end method
