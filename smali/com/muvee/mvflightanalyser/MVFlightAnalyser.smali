.class public Lcom/muvee/mvflightanalyser/MVFlightAnalyser;
.super Ljava/lang/Object;
.source "MVFlightAnalyser.java"


# static fields
.field private static a:Ljava/lang/String;

.field public static kFlightDataTypeDJI:Ljava/lang/String;

.field public static kFlightDataTypeParrot:Ljava/lang/String;


# instance fields
.field private b:Lcom/muvee/mvflightanalyser/a;

.field private c:Lcom/muvee/mvflightanalyser/data/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "com.muvee.mvflightAnalyser.MVFlightAnalyser"

    sput-object v0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->a:Ljava/lang/String;

    .line 15
    const-string v0, "MVFlightAnalyserDataTypeDJI"

    sput-object v0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->kFlightDataTypeDJI:Ljava/lang/String;

    .line 16
    const-string v0, "MVFlightAnalyserDataTypeParrot"

    sput-object v0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->kFlightDataTypeParrot:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkVideoForDroneTypeAtPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->c:Lcom/muvee/mvflightanalyser/data/a/b;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/muvee/mvflightanalyser/data/a/b;

    invoke-direct {v0}, Lcom/muvee/mvflightanalyser/data/a/b;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->c:Lcom/muvee/mvflightanalyser/data/a/b;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->c:Lcom/muvee/mvflightanalyser/data/a/b;

    invoke-virtual {v0, p1}, Lcom/muvee/mvflightanalyser/data/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkVideoForEmbeddedData(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->c:Lcom/muvee/mvflightanalyser/data/a/b;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/muvee/mvflightanalyser/data/a/b;

    invoke-direct {v0}, Lcom/muvee/mvflightanalyser/data/a/b;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->c:Lcom/muvee/mvflightanalyser/data/a/b;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->c:Lcom/muvee/mvflightanalyser/data/a/b;

    invoke-virtual {v0, p1}, Lcom/muvee/mvflightanalyser/data/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDurationOfFile(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->c:Lcom/muvee/mvflightanalyser/data/a/b;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/muvee/mvflightanalyser/data/a/b;

    invoke-direct {v0}, Lcom/muvee/mvflightanalyser/data/a/b;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->c:Lcom/muvee/mvflightanalyser/data/a/b;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->c:Lcom/muvee/mvflightanalyser/data/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/muvee/mvflightanalyser/data/a/b;->b(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestampFromEpochForFileAtPath(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->c:Lcom/muvee/mvflightanalyser/data/a/b;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/muvee/mvflightanalyser/data/a/b;

    invoke-direct {v0}, Lcom/muvee/mvflightanalyser/data/a/b;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->c:Lcom/muvee/mvflightanalyser/data/a/b;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->c:Lcom/muvee/mvflightanalyser/data/a/b;

    invoke-virtual {v0, p1}, Lcom/muvee/mvflightanalyser/data/a/b;->c(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public processDataFilePathArray(Ljava/util/ArrayList;Ljava/lang/String;I)Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->b:Lcom/muvee/mvflightanalyser/a;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/muvee/mvflightanalyser/a;

    invoke-direct {v0}, Lcom/muvee/mvflightanalyser/a;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->b:Lcom/muvee/mvflightanalyser/a;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->b:Lcom/muvee/mvflightanalyser/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/muvee/mvflightanalyser/a;->a(Ljava/util/ArrayList;Ljava/lang/String;I)Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    move-result-object v0

    return-object v0
.end method
