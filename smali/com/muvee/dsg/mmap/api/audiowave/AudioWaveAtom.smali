.class public Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;
.super Ljava/lang/Object;
.source "AudioWaveAtom.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;->a:J

    .line 14
    iput-wide p3, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;->b:J

    .line 15
    return-void
.end method

.method public constructor <init>([J)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;->a:J

    .line 19
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;->b:J

    .line 20
    return-void
.end method


# virtual methods
.method public getData()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;->b:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;->a:J

    return-wide v0
.end method

.method public setData(J)V
    .locals 1

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;->b:J

    .line 40
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;->a:J

    .line 34
    return-void
.end method
