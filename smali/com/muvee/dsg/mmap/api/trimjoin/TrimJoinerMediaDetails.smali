.class public Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoinerMediaDetails;
.super Ljava/lang/Object;
.source "TrimJoinerMediaDetails.java"


# instance fields
.field public edlEndTime:I

.field public edlStartTime:I

.field public is3DVideo:I

.field public mediaEndTime:I

.field public mediaPath:Ljava/lang/String;

.field public mediaStartTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoinerMediaDetails;->is3DVideo:I

    return-void
.end method
