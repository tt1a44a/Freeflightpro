.class public Lcom/muvee/mvdronecomposer/MusicItem;
.super Ljava/lang/Object;
.source "MusicItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationMs()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/muvee/mvdronecomposer/MusicItem;->c:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MusicItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeMs()F
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/muvee/mvdronecomposer/MusicItem;->b:F

    return v0
.end method

.method public setDurationMs(J)V
    .locals 1

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/muvee/mvdronecomposer/MusicItem;->c:J

    .line 30
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MusicItem;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setStartTimeMs(F)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/muvee/mvdronecomposer/MusicItem;->b:F

    .line 23
    return-void
.end method
