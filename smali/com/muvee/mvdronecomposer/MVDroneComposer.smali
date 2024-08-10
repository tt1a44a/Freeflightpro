.class public Lcom/muvee/mvdronecomposer/MVDroneComposer;
.super Ljava/lang/Object;
.source "MVDroneComposer.java"


# static fields
.field public static final ERROR_ANALYSIS_CANCELLED:I = 0x6b

.field public static final ERROR_INVALID_FLIGHT_DATA:I = 0x69

.field public static final ERROR_INVALID_HIGHLIGHT:I = 0x68

.field public static final ERROR_INVALID_MUSIC:I = 0x65

.field public static final ERROR_INVALID_STYLE_INDEX:I = 0x66

.field public static final ERROR_INVALID_TARGET_DURATION:I = 0x67

.field public static final ERROR_INVALID_THEME_INDEX:I = 0x6c

.field public static final ERROR_INVALID_VIDEO:I = 0x64

.field public static final ERROR_NOT_ENOUGH_SEGMENTS_FOR_TARGET_DURATION:I = 0x6a

.field public static final ERROR_TARGET_DURATION_LONGER_THAN_SOURCE_DURATION:I = 0x6e

.field public static final ERROR_UNSUPPORTED_DRONE_TYPE:I = 0x6d

.field private static INSTANCE:Lcom/muvee/mvdronecomposer/MVDroneComposer; = null

.field public static final STATUS_CANCEL:I = -0x6

.field public static final STATUS_ERROR:I = -0x4

.field public static final STATUS_PRE_EXECUTE:I = -0x1

.field public static final STATUS_PRE_PREVIEW:I = -0x2

.field public static final STATUS_PROGRESSING:I = -0x5

.field public static final STATUS_SUCCESS:I = -0x3

.field private static TAG:Ljava/lang/String; = null

.field public static final WARNING_HIGHLIGHTS_DROPPED:I = 0xc9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/muvee/mvdronecomposer/MVDroneComposer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposer;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposer;->INSTANCE:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposer;->TAG:Ljava/lang/String;

    const-string v1, "::MVDroneComposer:: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public static getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposer;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposer;->INSTANCE:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/muvee/mvdronecomposer/MVDroneComposer;

    invoke-direct {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposer;-><init>()V

    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposer;->INSTANCE:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    .line 48
    :cond_0
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposer;->INSTANCE:Lcom/muvee/mvdronecomposer/MVDroneComposer;

    return-object v0
.end method

.method public static isVideoDroneTypeSupported(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 123
    invoke-static {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->isVideoDroneTypeSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->cancelAnalysis()V

    return-void
.end method

.method public cancelExport()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->cancelExport()V

    .line 95
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->close()V

    .line 61
    return-void
.end method

.method public getAvailableTotalDurationMs()J
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getAvailableTotalDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExportFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getExportFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfHighlightsDropped()I
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getNumberOfHighlightsDropped()I

    move-result v0

    return v0
.end method

.method public getTargetDurationMs()J
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public pausePreview()V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pausePreview()V

    .line 81
    return-void
.end method

.method public seekTo(JLcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->seekTo(JLcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 87
    return-void
.end method

.method public setHighlights(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setHighlights(Ljava/util/ArrayList;)V

    .line 103
    return-void
.end method

.method public setPreviewParam(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setPreviewParam(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)V

    .line 67
    return-void
.end method

.method public setSaveParam(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;)V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setSaveParam(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;)V

    .line 71
    return-void
.end method

.method public startExport(Landroid/content/Context;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startExport(Landroid/content/Context;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 91
    return-void
.end method

.method public startMvFlightAnalyser(Landroid/content/Context;Lcom/muvee/mvdronecomposer/SettingsParam;Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;)V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startMvFlightAnalyser(Landroid/content/Context;Lcom/muvee/mvdronecomposer/SettingsParam;Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;)V

    .line 99
    return-void
.end method

.method public startPreview(ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startPreview(ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 77
    return-void
.end method
