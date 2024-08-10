.class public Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;
.super Ljava/lang/Object;
.source "MusicDescriptor.java"


# instance fields
.field public edlInterval:Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;

.field public fadeInDuration:I

.field public fadeOutDuration:I

.field public mediaAnalysisDataPath:Ljava/lang/String;

.field public mediaInterval:Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;

.field public mediaPath:Ljava/lang/String;

.field public volumeLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;III)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;->mediaPath:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;->mediaInterval:Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;

    .line 48
    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;

    .line 49
    iput p4, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;->volumeLevel:I

    .line 50
    iput p5, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;->fadeInDuration:I

    .line 51
    iput p6, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;->fadeOutDuration:I

    .line 52
    return-void
.end method


# virtual methods
.method public setEdlInterval(Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;)Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;

    .line 66
    return-object p0
.end method

.method public setFadeInDuration(I)Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;->fadeInDuration:I

    .line 76
    return-object p0
.end method

.method public setFadeOutDuration(I)Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;->fadeOutDuration:I

    .line 81
    return-object p0
.end method

.method public setMediaInterval(Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;)Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;->mediaInterval:Lcom/muvee/dsg/mmap/api/musicanalayzer/Interval;

    .line 61
    return-object p0
.end method

.method public setMediaPath(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;->mediaPath:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method public setVolumeLevel(I)Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicDescriptor;->volumeLevel:I

    .line 71
    return-object p0
.end method
