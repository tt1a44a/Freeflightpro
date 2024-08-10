.class public Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;
.super Ljava/lang/Object;
.source "MediaDescriptor.java"


# instance fields
.field public captionText:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

.field public colorFilter:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

.field public edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

.field public faceDesc:Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;

.field public fadeInDuration:I

.field public fadeOutDuration:I

.field public frameColorRGB:I

.field public imageOverlay:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

.field public magicMoments:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

.field public mediaContentType:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

.field public mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

.field public mediaPath:Ljava/lang/String;

.field public motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

.field public multiSource:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

.field public outputAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/MediaAspectRatio;

.field public segEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

.field public type:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

.field public volumeLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->MV_MVVE_USER_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->mediaContentType:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    .line 56
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaAspectRatio;->MV_MVVE_ASPECT_RATIO_BOX:Lcom/muvee/dsg/mmap/api/videoeditor/MediaAspectRatio;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->outputAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/MediaAspectRatio;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;Lcom/muvee/dsg/mmap/api/videoeditor/Interval;Lcom/muvee/dsg/mmap/api/videoeditor/Interval;III[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->MV_MVVE_USER_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->mediaContentType:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    .line 56
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaAspectRatio;->MV_MVVE_ASPECT_RATIO_BOX:Lcom/muvee/dsg/mmap/api/videoeditor/MediaAspectRatio;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->outputAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/MediaAspectRatio;

    .line 110
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->mediaPath:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->type:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    .line 113
    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 114
    iput-object p4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 115
    iput p5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->volumeLevel:I

    .line 116
    iput p6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->fadeInDuration:I

    .line 117
    iput p7, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->fadeOutDuration:I

    .line 118
    iput-object p8, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->segEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    .line 120
    return-void
.end method


# virtual methods
.method public setAspectRatio(Lcom/muvee/dsg/mmap/api/videoeditor/MediaAspectRatio;)Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->outputAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/MediaAspectRatio;

    .line 134
    return-object p0
.end method

.method public setEdlInterval(Lcom/muvee/dsg/mmap/api/videoeditor/Interval;)Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 144
    return-object p0
.end method

.method public setFadeInDuration(I)Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->fadeInDuration:I

    .line 159
    return-object p0
.end method

.method public setFadeOutDuration(I)Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->fadeOutDuration:I

    .line 164
    return-object p0
.end method

.method public setMediaInterval(Lcom/muvee/dsg/mmap/api/videoeditor/Interval;)Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 149
    return-object p0
.end method

.method public setMediaPath(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->mediaPath:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public setSegEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->segEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    .line 169
    return-object p0
.end method

.method public setType(Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;)Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->type:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    .line 129
    return-object p0
.end method

.method public setVolumeLevel(I)Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->volumeLevel:I

    .line 154
    return-object p0
.end method
