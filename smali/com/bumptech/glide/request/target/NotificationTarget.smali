.class public Lcom/bumptech/glide/request/target/NotificationTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "NotificationTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final notification:Landroid/app/Notification;

.field private final notificationId:I

.field private final notificationTag:Ljava/lang/String;

.field private final remoteViews:Landroid/widget/RemoteViews;

.field private final viewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILandroid/widget/RemoteViews;Landroid/app/Notification;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "viewId"    # I
    .param p5, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p6, "notification"    # Landroid/app/Notification;
    .param p7, "notificationId"    # I
    .param p8, "notificationTag"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 89
    const-string v0, "Context must not be null!"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->context:Landroid/content/Context;

    .line 90
    const-string v0, "Notification object can not be null!"

    .line 91
    invoke-static {p6, v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    iput-object v0, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notification:Landroid/app/Notification;

    .line 92
    const-string v0, "RemoteViews object can not be null!"

    .line 93
    invoke-static {p5, v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->remoteViews:Landroid/widget/RemoteViews;

    .line 94
    iput p4, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->viewId:I

    .line 95
    iput p7, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notificationId:I

    .line 96
    iput-object p8, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notificationTag:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/app/Notification;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewId"    # I
    .param p3, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "notificationId"    # I

    .prologue
    .line 45
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/request/target/NotificationTarget;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/app/Notification;ILjava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/app/Notification;ILjava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewId"    # I
    .param p3, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "notificationId"    # I
    .param p6, "notificationTag"    # Ljava/lang/String;

    .prologue
    const/high16 v2, -0x80000000

    .line 64
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/request/target/NotificationTarget;-><init>(Landroid/content/Context;IIILandroid/widget/RemoteViews;Landroid/app/Notification;ILjava/lang/String;)V

    .line 66
    return-void
.end method

.method private update()V
    .locals 5

    .prologue
    .line 103
    iget-object v1, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->context:Landroid/content/Context;

    const-string v2, "notification"

    .line 104
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 105
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notificationTag:Ljava/lang/String;

    iget v3, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notificationId:I

    iget-object v4, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->notification:Landroid/app/Notification;

    .line 106
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 107
    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 2
    .param p1, "resource"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "transition":Lcom/bumptech/glide/request/transition/Transition;, "Lcom/bumptech/glide/request/transition/Transition<-Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->remoteViews:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->viewId:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 113
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/NotificationTarget;->update()V

    .line 114
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/target/NotificationTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
