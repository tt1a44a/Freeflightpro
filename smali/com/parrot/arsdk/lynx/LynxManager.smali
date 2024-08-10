.class public Lcom/parrot/arsdk/lynx/LynxManager;
.super Ljava/lang/Object;
.source "LynxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;,
        Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;,
        Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static U_COMPONENT:I

.field private static V_COMPONENT:I

.field private static Y_COMPONENT:I


# instance fields
.field private mAwaitTarget:Z

.field private mCallCount:I

.field private mDebugLevel:I

.field private mDumpPath:Ljava/lang/String;

.field private mFrameAvailable:Ljava/util/concurrent/locks/Condition;

.field private final mHeight:I

.field private mInitSuccess:Z

.field private mIsStandBy:Z

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

.field private mLynxResult:Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

.field private mLynxStop:Z

.field private mModelNNPath:Ljava/lang/String;

.field private mNativeManager:J

.field private mOnLynxProcessFrameListener:Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;

.field private mPointF:Landroid/graphics/PointF;

.field private mPriorsNNPath:Ljava/lang/String;

.field private final mProcessFrameRunnable:Ljava/lang/Runnable;

.field private final mRectToSet:Landroid/graphics/RectF;

.field private mResetTarget:Z

.field private mTargetMismatch:Z

.field private final mThread:Ljava/lang/Thread;

.field private mUserTouch:Z

.field private final mWidth:I

.field private final uStride:I

.field private final vStride:I

.field private final yStride:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-class v0, Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/lynx/LynxManager;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/parrot/arsdk/lynx/LynxManager;->Y_COMPONENT:I

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/parrot/arsdk/lynx/LynxManager;->U_COMPONENT:I

    .line 20
    const/4 v0, 0x2

    sput v0, Lcom/parrot/arsdk/lynx/LynxManager;->V_COMPONENT:I

    .line 70
    const-class v0, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    const-class v1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    const-class v2, Lcom/parrot/arsdk/lynx/LynxRectangle;

    invoke-static {v0, v1, v2}, Lcom/parrot/arsdk/lynx/LynxManager;->nativeStaticInit(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIF)V
    .locals 3
    .param p1, "dumpPath"    # Ljava/lang/String;
    .param p2, "modelNNPath"    # Ljava/lang/String;
    .param p3, "priorsNNPath"    # Ljava/lang/String;
    .param p4, "debugLevel"    # I
    .param p5, "videoWidth"    # I
    .param p6, "videoHeight"    # I
    .param p7, "horizontalFov"    # F

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v2, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mInitSuccess:Z

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mNativeManager:J

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 34
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mFrameAvailable:Ljava/util/concurrent/locks/Condition;

    .line 36
    iput v2, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mCallCount:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mIsStandBy:Z

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mDumpPath:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mModelNNPath:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mPriorsNNPath:Ljava/lang/String;

    .line 75
    iput-boolean v2, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxStop:Z

    .line 76
    new-instance v0, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    invoke-direct {v0}, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxResult:Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    .line 77
    iput-boolean v2, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mResetTarget:Z

    .line 78
    iput-boolean v2, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mTargetMismatch:Z

    .line 79
    iput-boolean v2, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mUserTouch:Z

    .line 80
    iput-boolean v2, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mAwaitTarget:Z

    .line 82
    new-instance v0, Lcom/parrot/arsdk/lynx/LynxManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/lynx/LynxManager$1;-><init>(Lcom/parrot/arsdk/lynx/LynxManager;)V

    iput-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mProcessFrameRunnable:Ljava/lang/Runnable;

    .line 152
    sget-object v0, Lcom/parrot/arsdk/lynx/LynxManager;->TAG:Ljava/lang/String;

    const-string v1, "LynxManager ctor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-object p1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mDumpPath:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mModelNNPath:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mPriorsNNPath:Ljava/lang/String;

    .line 156
    iput p4, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mDebugLevel:I

    .line 157
    invoke-direct {p0}, Lcom/parrot/arsdk/lynx/LynxManager;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mNativeManager:J

    .line 158
    iput p5, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mWidth:I

    .line 159
    iput p6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mHeight:I

    .line 160
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mRectToSet:Landroid/graphics/RectF;

    .line 162
    iget v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mWidth:I

    iput v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->yStride:I

    .line 163
    iget v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->uStride:I

    .line 164
    iget v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->uStride:I

    iput v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->vStride:I

    .line 166
    new-instance v0, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;-><init>(Lcom/parrot/arsdk/lynx/LynxManager$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    .line 167
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iput p7, v0, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->fov_h:F

    .line 168
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    const/4 v1, 0x0

    iput v1, v0, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->fov_v:F

    .line 170
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mProcessFrameRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mThread:Ljava/lang/Thread;

    .line 171
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mThread:Ljava/lang/Thread;

    const-string v1, "LynxManager processFrame"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/lynx/LynxManager;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/lynx/LynxManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxStop:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/parrot/arsdk/lynx/LynxManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mTargetMismatch:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/parrot/arsdk/lynx/LynxManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mTargetMismatch:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/parrot/arsdk/lynx/LynxManager;JFFF)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # F
    .param p4, "x3"    # F
    .param p5, "x4"    # F

    .prologue
    .line 14
    invoke-direct/range {p0 .. p5}, Lcom/parrot/arsdk/lynx/LynxManager;->nativeTargetMismatch(JFFF)V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/parrot/arsdk/lynx/LynxManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/arsdk/lynx/LynxManager;J[B[B[BLcom/parrot/arsdk/lynx/LynxManager$LynxInput;Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B
    .param p4, "x3"    # [B
    .param p5, "x4"    # [B
    .param p6, "x5"    # Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;
    .param p7, "x6"    # Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    .prologue
    .line 14
    invoke-direct/range {p0 .. p7}, Lcom/parrot/arsdk/lynx/LynxManager;->nativeProcessFrame(J[B[B[BLcom/parrot/arsdk/lynx/LynxManager$LynxInput;Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mOnLynxProcessFrameListener:Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parrot/arsdk/lynx/LynxManager;J)J
    .locals 3
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;
    .param p1, "x1"    # J

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/lynx/LynxManager;->nativeDestroy(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/lynx/LynxManager;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mFrameAvailable:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/arsdk/lynx/LynxManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mAwaitTarget:Z

    return v0
.end method

.method static synthetic access$302(Lcom/parrot/arsdk/lynx/LynxManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mAwaitTarget:Z

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxResult:Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/arsdk/lynx/LynxManager;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mRectToSet:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/arsdk/lynx/LynxManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mResetTarget:Z

    return v0
.end method

.method static synthetic access$602(Lcom/parrot/arsdk/lynx/LynxManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mResetTarget:Z

    return p1
.end method

.method static synthetic access$700(Lcom/parrot/arsdk/lynx/LynxManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mNativeManager:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/parrot/arsdk/lynx/LynxManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;
    .param p1, "x1"    # J

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mNativeManager:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/parrot/arsdk/lynx/LynxManager;JFFFF)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # F
    .param p4, "x3"    # F
    .param p5, "x4"    # F
    .param p6, "x5"    # F

    .prologue
    .line 14
    invoke-direct/range {p0 .. p6}, Lcom/parrot/arsdk/lynx/LynxManager;->nativeSetTarget(JFFFF)V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/arsdk/lynx/LynxManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mIsStandBy:Z

    return v0
.end method

.method static synthetic access$902(Lcom/parrot/arsdk/lynx/LynxManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/lynx/LynxManager;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mIsStandBy:Z

    return p1
.end method

.method private native nativeConfigure(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Z
.end method

.method private native nativeCreate()J
.end method

.method private native nativeDestroy(J)J
.end method

.method private native nativeProcessFrame(J[B[B[BLcom/parrot/arsdk/lynx/LynxManager$LynxInput;Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)Z
.end method

.method private native nativeReset(J)V
.end method

.method private native nativeSetTarget(JFFFF)V
.end method

.method private native nativeSmartBoxing(J[B[B[BLcom/parrot/arsdk/lynx/LynxManager$LynxInput;FFFFLjava/lang/Class;)Lcom/parrot/arsdk/lynx/LynxRectangle;
    .param p11    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[B[B[B",
            "Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;",
            "FFFF",
            "Ljava/lang/Class",
            "<",
            "Lcom/parrot/arsdk/lynx/LynxRectangle;",
            ">;)",
            "Lcom/parrot/arsdk/lynx/LynxRectangle;"
        }
    .end annotation
.end method

.method private static native nativeStaticInit(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;",
            ">;",
            "Ljava/lang/Class",
            "<",
            "Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;",
            ">;",
            "Ljava/lang/Class",
            "<",
            "Lcom/parrot/arsdk/lynx/LynxRectangle;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeTargetMismatch(JFFF)V
.end method

.method private native nativeUserTouch(JFF)V
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mWidth:I

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/parrot/arsdk/lynx/LynxManager;->stopLynx()V

    .line 359
    return-void
.end method

.method public onFrameDecodedReady([Lcom/parrot/arsdk/lynx/ARCodecsComponent;JFFFFIDDDDDD)V
    .locals 11
    .param p1, "frameComponents"    # [Lcom/parrot/arsdk/lynx/ARCodecsComponent;
    .param p2, "frameTimestamp"    # J
    .param p4, "quaternionW"    # F
    .param p5, "quaternionX"    # F
    .param p6, "quaternionY"    # F
    .param p7, "quaternionZ"    # F
    .param p8, "width"    # I
    .param p9, "droneLatitude"    # D
    .param p11, "droneLongitude"    # D
    .param p13, "droneAltitude"    # D
    .param p15, "targetLatitude"    # D
    .param p17, "targetLongitude"    # D
    .param p19, "targetAltitude"    # D

    .prologue
    .line 252
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/parrot/arsdk/lynx/ARCodecsComponent;->getlineSize()I

    move-result v6

    div-int v2, p8, v6

    .line 254
    .local v2, "height":I
    iget v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mCallCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mCallCount:I

    .line 256
    iget v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mWidth:I

    move/from16 v0, p8

    if-ne v0, v6, :cond_0

    sget v6, Lcom/parrot/arsdk/lynx/LynxManager;->U_COMPONENT:I

    aget-object v6, p1, v6

    .line 257
    invoke-virtual {v6}, Lcom/parrot/arsdk/lynx/ARCodecsComponent;->getData()[B

    move-result-object v6

    array-length v6, v6

    iget v7, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mWidth:I

    iget v8, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mHeight:I

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x4

    if-ne v6, v7, :cond_0

    sget v6, Lcom/parrot/arsdk/lynx/LynxManager;->V_COMPONENT:I

    aget-object v6, p1, v6

    .line 258
    invoke-virtual {v6}, Lcom/parrot/arsdk/lynx/ARCodecsComponent;->getData()[B

    move-result-object v6

    array-length v6, v6

    iget v7, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mWidth:I

    iget v8, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mHeight:I

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x4

    if-eq v6, v7, :cond_2

    .line 259
    :cond_0
    sget-object v6, Lcom/parrot/arsdk/lynx/LynxManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LYNX] Image dimension mismatch : excepted ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), received ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") (u size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/parrot/arsdk/lynx/LynxManager;->U_COMPONENT:I

    aget-object v8, p1, v8

    .line 260
    invoke-virtual {v8}, Lcom/parrot/arsdk/lynx/ARCodecsComponent;->getData()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", v size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/parrot/arsdk/lynx/LynxManager;->V_COMPONENT:I

    aget-object v8, p1, v8

    .line 261
    invoke-virtual {v8}, Lcom/parrot/arsdk/lynx/ARCodecsComponent;->getData()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mWidth:I

    iget v9, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mHeight:I

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 259
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-nez v6, :cond_3

    .line 265
    sget-object v6, Lcom/parrot/arsdk/lynx/LynxManager;->TAG:Ljava/lang/String;

    const-string v7, "[LYNX] Missing meta data, cannot process lynx."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    :cond_3
    iget-boolean v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mInitSuccess:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mIsStandBy:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxStop:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    iget-boolean v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mUserTouch:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mTargetMismatch:Z

    if-nez v6, :cond_4

    .line 272
    iget-wide v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mNativeManager:J

    iget-object v8, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mPointF:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mPointF:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/parrot/arsdk/lynx/LynxManager;->nativeUserTouch(JFF)V

    .line 273
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mUserTouch:Z

    .line 274
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mAwaitTarget:Z

    .line 278
    :cond_4
    sget v6, Lcom/parrot/arsdk/lynx/LynxManager;->Y_COMPONENT:I

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/parrot/arsdk/lynx/ARCodecsComponent;->getData()[B

    move-result-object v6

    array-length v5, v6

    .line 279
    .local v5, "yLenght":I
    sget v6, Lcom/parrot/arsdk/lynx/LynxManager;->U_COMPONENT:I

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/parrot/arsdk/lynx/ARCodecsComponent;->getData()[B

    move-result-object v6

    array-length v3, v6

    .line 280
    .local v3, "uLenght":I
    sget v6, Lcom/parrot/arsdk/lynx/LynxManager;->V_COMPONENT:I

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/parrot/arsdk/lynx/ARCodecsComponent;->getData()[B

    move-result-object v6

    array-length v4, v6

    .line 281
    .local v4, "vLength":I
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v6, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v7, 0x0

    aget-object v6, v6, v7

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v6, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v7, 0x0

    aget-object v6, v6, v7

    array-length v6, v6

    if-eq v6, v5, :cond_6

    .line 282
    :cond_5
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v6, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v7, 0x0

    new-array v8, v5, [B

    aput-object v8, v6, v7

    .line 283
    :cond_6
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v6, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v6, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    array-length v6, v6

    if-eq v6, v3, :cond_8

    .line 284
    :cond_7
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v6, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v7, 0x1

    new-array v8, v3, [B

    aput-object v8, v6, v7

    .line 285
    :cond_8
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v6, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v7, 0x2

    aget-object v6, v6, v7

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v6, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v7, 0x2

    aget-object v6, v6, v7

    array-length v6, v6

    if-eq v6, v4, :cond_a

    .line 286
    :cond_9
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v6, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v7, 0x2

    new-array v8, v4, [B

    aput-object v8, v6, v7

    .line 287
    :cond_a
    sget v6, Lcom/parrot/arsdk/lynx/LynxManager;->Y_COMPONENT:I

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/parrot/arsdk/lynx/ARCodecsComponent;->getData()[B

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v8, v8, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    sget v6, Lcom/parrot/arsdk/lynx/LynxManager;->U_COMPONENT:I

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/parrot/arsdk/lynx/ARCodecsComponent;->getData()[B

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v8, v8, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    sget v6, Lcom/parrot/arsdk/lynx/LynxManager;->V_COMPONENT:I

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/parrot/arsdk/lynx/ARCodecsComponent;->getData()[B

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v8, v8, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iput-wide p2, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->frame_ts:J

    .line 293
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget v7, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mCallCount:I

    int-to-long v8, v7

    iput-wide v8, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->frame_idx:J

    .line 295
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    move-wide/from16 v0, p9

    iput-wide v0, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->drone_latitude:D

    .line 296
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    move-wide/from16 v0, p11

    iput-wide v0, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->drone_longitude:D

    .line 297
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    move-wide/from16 v0, p13

    iput-wide v0, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->drone_altitude:D

    .line 299
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    move-wide/from16 v0, p15

    iput-wide v0, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->target_latitude:D

    .line 300
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    move-wide/from16 v0, p17

    iput-wide v0, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->target_longitude:D

    .line 301
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    move-wide/from16 v0, p19

    iput-wide v0, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->target_altitude:D

    .line 303
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iput p4, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->quaternionW:F

    .line 304
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    move/from16 v0, p5

    iput v0, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->quaternionX:F

    .line 305
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    move/from16 v0, p6

    iput v0, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->quaternionY:F

    .line 306
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    move/from16 v0, p7

    iput v0, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->quaternionZ:F

    .line 308
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mFrameAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 310
    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method

.method public setLynxResultListener(Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mOnLynxProcessFrameListener:Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;

    .line 355
    return-void
.end method

.method public setTarget(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mRectToSet:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 214
    iput-boolean v1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mIsStandBy:Z

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mResetTarget:Z

    .line 216
    iput-boolean v1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mTargetMismatch:Z

    .line 217
    return-void
.end method

.method public setUserTouch(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 220
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mPointF:Landroid/graphics/PointF;

    .line 221
    iput-boolean v1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mUserTouch:Z

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mIsStandBy:Z

    .line 223
    iput-boolean v1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mTargetMismatch:Z

    .line 224
    return-void
.end method

.method public smartBoxing(Landroid/graphics/RectF;)Z
    .locals 14
    .param p1, "rect"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 227
    iget-wide v2, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mNativeManager:J

    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v1, v1, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v4, 0x0

    aget-object v4, v1, v4

    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v1, v1, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v5, 0x1

    aget-object v5, v1, v5

    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget-object v1, v1, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v6, 0x2

    aget-object v6, v1, v6

    iget-object v7, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxInput:Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    iget v8, p1, Landroid/graphics/RectF;->left:F

    iget v9, p1, Landroid/graphics/RectF;->top:F

    .line 229
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v11

    const-class v12, Lcom/parrot/arsdk/lynx/LynxRectangle;

    move-object v1, p0

    .line 227
    invoke-direct/range {v1 .. v12}, Lcom/parrot/arsdk/lynx/LynxManager;->nativeSmartBoxing(J[B[B[BLcom/parrot/arsdk/lynx/LynxManager$LynxInput;FFFFLjava/lang/Class;)Lcom/parrot/arsdk/lynx/LynxRectangle;

    move-result-object v0

    .line 232
    .local v0, "lynxRectangle":Lcom/parrot/arsdk/lynx/LynxRectangle;
    invoke-virtual {v0}, Lcom/parrot/arsdk/lynx/LynxRectangle;->isValid()Z

    move-result v13

    .line 233
    .local v13, "rectValidity":Z
    if-eqz v13, :cond_0

    .line 234
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mRectToSet:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 235
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mUserTouch:Z

    .line 236
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mResetTarget:Z

    .line 237
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mIsStandBy:Z

    .line 238
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mTargetMismatch:Z

    .line 241
    :cond_0
    return v13
.end method

.method public standByLynx()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mIsStandBy:Z

    .line 205
    return-void
.end method

.method public startLynx()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 175
    sget-object v0, Lcom/parrot/arsdk/lynx/LynxManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startLynx"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-wide v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mNativeManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 177
    iget-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mInitSuccess:Z

    if-nez v0, :cond_0

    .line 178
    iget-wide v2, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mNativeManager:J

    iget-object v4, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mDumpPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mModelNNPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mPriorsNNPath:Ljava/lang/String;

    iget v7, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mDebugLevel:I

    iget v8, p0, Lcom/parrot/arsdk/lynx/LynxManager;->yStride:I

    iget v9, p0, Lcom/parrot/arsdk/lynx/LynxManager;->uStride:I

    iget v10, p0, Lcom/parrot/arsdk/lynx/LynxManager;->vStride:I

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/parrot/arsdk/lynx/LynxManager;->nativeConfigure(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mInitSuccess:Z

    .line 180
    sget-object v0, Lcom/parrot/arsdk/lynx/LynxManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startLynx, initSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mInitSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mInitSuccess:Z

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 185
    iput-boolean v11, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mIsStandBy:Z

    .line 186
    iput-boolean v11, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxStop:Z

    .line 191
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mInitSuccess:Z

    return v0

    .line 188
    :cond_2
    iget-wide v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mNativeManager:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/lynx/LynxManager;->nativeDestroy(J)J

    goto :goto_0
.end method

.method public stopLynx()V
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/parrot/arsdk/lynx/LynxManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopLynx"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLynxStop:Z

    .line 197
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mFrameAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 199
    iget-object v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 201
    :cond_0
    return-void
.end method

.method public targetMismatch()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/lynx/LynxManager;->mTargetMismatch:Z

    .line 246
    return-void
.end method
