.class Lcom/parrot/freeflight/map/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/parrot/freeflight/map/GLTextureView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/map/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/map/GLTextureView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "glTextureViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/parrot/freeflight/map/GLTextureView;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 983
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1515
    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mSizeChanged:Z

    .line 984
    iput v2, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mWidth:I

    .line 985
    iput v2, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHeight:I

    .line 986
    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRequestRender:Z

    .line 987
    iput v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRenderMode:I

    .line 988
    iput-object p1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 989
    return-void
.end method

.method static synthetic access$1102(Lcom/parrot/freeflight/map/GLTextureView$GLThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/map/GLTextureView$GLThread;
    .param p1, "x1"    # Z

    .prologue
    .line 981
    iput-boolean p1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1030
    new-instance v19, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mEglHelper:Lcom/parrot/freeflight/map/GLTextureView$EglHelper;

    .line 1031
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1032
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1034
    const/4 v8, 0x0

    .line 1035
    .local v8, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1036
    .local v3, "createEglContext":Z
    const/4 v4, 0x0

    .line 1037
    .local v4, "createEglSurface":Z
    const/4 v5, 0x0

    .line 1038
    .local v5, "createGlInterface":Z
    const/4 v10, 0x0

    .line 1039
    .local v10, "lostEglContext":Z
    const/4 v13, 0x0

    .line 1040
    .local v13, "sizeChanged":Z
    const/16 v18, 0x0

    .line 1041
    .local v18, "wantRenderNotification":Z
    const/4 v6, 0x0

    .line 1042
    .local v6, "doRenderNotification":Z
    const/4 v2, 0x0

    .line 1043
    .local v2, "askedToReleaseEglContext":Z
    const/16 v17, 0x0

    .line 1044
    .local v17, "w":I
    const/4 v9, 0x0

    .line 1045
    .local v9, "h":I
    const/4 v7, 0x0

    .line 1048
    .local v7, "event":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1050
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mShouldExit:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1051
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1318
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1319
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1320
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1321
    monitor-exit v20

    .line 1051
    return-void

    .line 1321
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 1054
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Runnable;

    move-object v7, v0

    .line 1219
    :goto_2
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1221
    if-eqz v7, :cond_14

    .line 1222
    :try_start_4
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1223
    const/4 v7, 0x0

    .line 1224
    goto :goto_0

    .line 1060
    :cond_2
    const/4 v11, 0x0

    .line 1061
    .local v11, "pausing":Z
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mPaused:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRequestPaused:Z

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1062
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1063
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRequestPaused:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mPaused:Z

    .line 1064
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1071
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1075
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1076
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1077
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 1078
    const/4 v2, 0x1

    .line 1082
    :cond_4
    if-eqz v10, :cond_5

    .line 1083
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1084
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1085
    const/4 v10, 0x0

    .line 1089
    :cond_5
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1093
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1097
    :cond_6
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/parrot/freeflight/map/GLTextureView;

    .line 1099
    .local v16, "view":Lcom/parrot/freeflight/map/GLTextureView;
    if-nez v16, :cond_11

    const/4 v12, 0x0

    .line 1101
    .local v12, "preserveEglContextOnPause":Z
    :goto_3
    if-eqz v12, :cond_7

    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1102
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1110
    .end local v12    # "preserveEglContextOnPause":Z
    .end local v16    # "view":Lcom/parrot/freeflight/map/GLTextureView;
    :cond_8
    if-eqz v11, :cond_9

    .line 1111
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mEglHelper:Lcom/parrot/freeflight/map/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->finish()V

    .line 1120
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 1124
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1125
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1127
    :cond_a
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 1128
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1129
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1133
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1137
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 1138
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1141
    :cond_c
    if-eqz v6, :cond_d

    .line 1145
    const/16 v18, 0x0

    .line 1146
    const/4 v6, 0x0

    .line 1147
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1148
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1152
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->readyToDraw()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1155
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 1156
    if-eqz v2, :cond_12

    .line 1157
    const/4 v2, 0x0

    .line 1172
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 1173
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1174
    const/4 v4, 0x1

    .line 1175
    const/4 v5, 0x1

    .line 1176
    const/4 v13, 0x1

    .line 1179
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 1180
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mSizeChanged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 1181
    const/4 v13, 0x1

    .line 1182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mWidth:I

    move/from16 v17, v0

    .line 1183
    move-object/from16 v0, p0

    iget v9, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHeight:I

    .line 1184
    const/16 v18, 0x1

    .line 1192
    const/4 v4, 0x1

    .line 1194
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mSizeChanged:Z

    .line 1196
    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRequestRender:Z

    .line 1197
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 1219
    .end local v11    # "pausing":Z
    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1318
    :catchall_2
    move-exception v19

    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1319
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1320
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1321
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v19

    .line 1100
    .restart local v11    # "pausing":Z
    .restart local v16    # "view":Lcom/parrot/freeflight/map/GLTextureView;
    :cond_11
    :try_start_8
    invoke-static/range {v16 .. v16}, Lcom/parrot/freeflight/map/GLTextureView;->access$900(Lcom/parrot/freeflight/map/GLTextureView;)Z

    move-result v12

    goto/16 :goto_3

    .line 1158
    .end local v16    # "view":Lcom/parrot/freeflight/map/GLTextureView;
    :cond_12
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/parrot/freeflight/map/GLTextureView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v19

    if-eqz v19, :cond_e

    .line 1160
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mEglHelper:Lcom/parrot/freeflight/map/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->start()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1165
    const/16 v19, 0x1

    :try_start_a
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1166
    const/4 v3, 0x1

    .line 1168
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_4

    .line 1161
    :catch_0
    move-exception v15

    .line 1162
    .local v15, "t":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/parrot/freeflight/map/GLTextureView$GLThread;)V

    .line 1163
    throw v15

    .line 1217
    .end local v15    # "t":Ljava/lang/RuntimeException;
    :cond_13
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1227
    .end local v11    # "pausing":Z
    :cond_14
    if-eqz v4, :cond_15

    .line 1231
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mEglHelper:Lcom/parrot/freeflight/map/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->createSurface()Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 1232
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1233
    const/16 v19, 0x1

    :try_start_c
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1234
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1235
    monitor-exit v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1244
    const/4 v4, 0x0

    .line 1247
    :cond_15
    if-eqz v5, :cond_16

    .line 1248
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mEglHelper:Lcom/parrot/freeflight/map/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v0

    .line 1250
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1251
    const/4 v5, 0x0

    .line 1254
    :cond_16
    if-eqz v3, :cond_18

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/parrot/freeflight/map/GLTextureView;

    .line 1259
    .restart local v16    # "view":Lcom/parrot/freeflight/map/GLTextureView;
    if-eqz v16, :cond_17

    .line 1260
    invoke-static/range {v16 .. v16}, Lcom/parrot/freeflight/map/GLTextureView;->access$1000(Lcom/parrot/freeflight/map/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mEglHelper:Lcom/parrot/freeflight/map/GLTextureView$EglHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1262
    :cond_17
    const/4 v3, 0x0

    .line 1265
    .end local v16    # "view":Lcom/parrot/freeflight/map/GLTextureView;
    :cond_18
    if-eqz v13, :cond_1a

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/parrot/freeflight/map/GLTextureView;

    .line 1270
    .restart local v16    # "view":Lcom/parrot/freeflight/map/GLTextureView;
    if-eqz v16, :cond_19

    .line 1271
    invoke-static/range {v16 .. v16}, Lcom/parrot/freeflight/map/GLTextureView;->access$1000(Lcom/parrot/freeflight/map/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v8, v1, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1273
    :cond_19
    const/4 v13, 0x0

    .line 1280
    .end local v16    # "view":Lcom/parrot/freeflight/map/GLTextureView;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/parrot/freeflight/map/GLTextureView;

    .line 1281
    .restart local v16    # "view":Lcom/parrot/freeflight/map/GLTextureView;
    if-eqz v16, :cond_1b

    .line 1282
    invoke-static/range {v16 .. v16}, Lcom/parrot/freeflight/map/GLTextureView;->access$1000(Lcom/parrot/freeflight/map/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1285
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mEglHelper:Lcom/parrot/freeflight/map/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->swap()I

    move-result v14

    .line 1286
    .local v14, "swapError":I
    sparse-switch v14, :sswitch_data_0

    .line 1300
    const-string v19, "GLThread"

    const-string v20, "eglSwapBuffers"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1302
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1303
    const/16 v19, 0x1

    :try_start_e
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1304
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1305
    monitor-exit v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1309
    :goto_5
    :sswitch_0
    if-eqz v18, :cond_0

    .line 1310
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1235
    .end local v14    # "swapError":I
    .end local v16    # "view":Lcom/parrot/freeflight/map/GLTextureView;
    :catchall_3
    move-exception v19

    :try_start_f
    monitor-exit v20
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v19

    .line 1237
    :cond_1c
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1238
    const/16 v19, 0x1

    :try_start_11
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1239
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1240
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1241
    monitor-exit v20

    goto/16 :goto_0

    :catchall_4
    move-exception v19

    monitor-exit v20
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v19
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1293
    .restart local v14    # "swapError":I
    .restart local v16    # "view":Lcom/parrot/freeflight/map/GLTextureView;
    :sswitch_1
    const/4 v10, 0x1

    .line 1294
    goto :goto_5

    .line 1305
    :catchall_5
    move-exception v19

    :try_start_13
    monitor-exit v20
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v19
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1321
    .end local v14    # "swapError":I
    .end local v16    # "view":Lcom/parrot/freeflight/map/GLTextureView;
    :catchall_6
    move-exception v19

    :try_start_15
    monitor-exit v20
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    throw v19

    .line 1286
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1330
    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mSurfaceIsBad:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHeight:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1023
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mEglHelper:Lcom/parrot/freeflight/map/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->finish()V

    .line 1025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1026
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/parrot/freeflight/map/GLTextureView$GLThread;)V

    .line 1028
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1012
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1013
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1014
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mEglHelper:Lcom/parrot/freeflight/map/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->destroySurface()V

    .line 1016
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1326
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1346
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1347
    :try_start_0
    iget v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1396
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1400
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1401
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1402
    :goto_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1407
    :try_start_1
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1408
    :catch_0
    move-exception v0

    .line 1409
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1412
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1413
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1416
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1420
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1421
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRequestRender:Z

    .line 1422
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1423
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1424
    :goto_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1429
    :try_start_1
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1430
    :catch_0
    move-exception v0

    .line 1431
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1434
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1435
    return-void
.end method

.method public onWindowResize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1438
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1439
    :try_start_0
    iput p1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mWidth:I

    .line 1440
    iput p2, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHeight:I

    .line 1441
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mSizeChanged:Z

    .line 1442
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRequestRender:Z

    .line 1443
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1444
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1447
    :goto_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    .line 1448
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1453
    :try_start_1
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1458
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1459
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1487
    if-nez p1, :cond_0

    .line 1488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1490
    :cond_0
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1491
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1492
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1493
    monitor-exit v1

    .line 1494
    return-void

    .line 1493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1464
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1465
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mShouldExit:Z

    .line 1466
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1467
    :goto_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1469
    :try_start_1
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1474
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1475
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 1479
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1480
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1352
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1353
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRequestRender:Z

    .line 1354
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1355
    monitor-exit v1

    .line 1356
    return-void

    .line 1355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->setName(Ljava/lang/String;)V

    .line 999
    :try_start_0
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->threadExiting(Lcom/parrot/freeflight/map/GLTextureView$GLThread;)V

    .line 1005
    :goto_0
    return-void

    .line 1000
    :catch_0
    move-exception v0

    .line 1003
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->threadExiting(Lcom/parrot/freeflight/map/GLTextureView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->threadExiting(Lcom/parrot/freeflight/map/GLTextureView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1336
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1337
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1339
    :cond_1
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1340
    :try_start_0
    iput p1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mRenderMode:I

    .line 1341
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1342
    monitor-exit v1

    .line 1343
    return-void

    .line 1342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1359
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1363
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHasSurface:Z

    .line 1364
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1365
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1366
    :goto_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1370
    :try_start_1
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1375
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1376
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1379
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1383
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mHasSurface:Z

    .line 1384
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1385
    :goto_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1387
    :try_start_1
    invoke-static {}, Lcom/parrot/freeflight/map/GLTextureView;->access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1392
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1393
    return-void
.end method
