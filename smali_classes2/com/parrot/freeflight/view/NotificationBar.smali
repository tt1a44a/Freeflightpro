.class public Lcom/parrot/freeflight/view/NotificationBar;
.super Landroid/widget/FrameLayout;
.source "NotificationBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/view/NotificationBar$NotificationBarListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final MAX_LENGTH:I = 0x20


# instance fields
.field private mDismissButton:Landroid/widget/ImageButton;

.field private mInAppNotification:Lcom/parrot/freeflight/notification/InAppNotification;

.field private mListener:Lcom/parrot/freeflight/view/NotificationBar$NotificationBarListener;

.field private mNotificationLayout:Landroid/view/View;

.field private mSubTitleTextView:Landroid/widget/TextView;

.field private mTagTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/view/NotificationBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/view/NotificationBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/view/NotificationBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/view/NotificationBar;)Lcom/parrot/freeflight/view/NotificationBar$NotificationBarListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/view/NotificationBar;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/view/NotificationBar;->mListener:Lcom/parrot/freeflight/view/NotificationBar$NotificationBarListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/view/NotificationBar;)Lcom/parrot/freeflight/notification/InAppNotification;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/view/NotificationBar;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/view/NotificationBar;->mInAppNotification:Lcom/parrot/freeflight/notification/InAppNotification;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/view/NotificationBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/view/NotificationBar;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/view/NotificationBar;->mTagTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/view/NotificationBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/view/NotificationBar;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/view/NotificationBar;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/view/NotificationBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/view/NotificationBar;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/view/NotificationBar;->mSubTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/view/NotificationBar;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    invoke-direct {p0}, Lcom/parrot/freeflight/view/NotificationBar;->initViews()V

    .line 80
    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/NotificationBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f0c0100

    invoke-static {v0, v2, p0}, Lcom/parrot/freeflight/view/NotificationBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f0a025f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar;->mNotificationLayout:Landroid/view/View;

    .line 93
    const v2, 0x7f0a04c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar;->mTagTextView:Landroid/widget/TextView;

    .line 94
    const v2, 0x7f0a04cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar;->mTitleTextView:Landroid/widget/TextView;

    .line 95
    const v2, 0x7f0a04c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar;->mSubTitleTextView:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f0a005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar;->mDismissButton:Landroid/widget/ImageButton;

    .line 99
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar;->mNotificationLayout:Landroid/view/View;

    new-instance v3, Lcom/parrot/freeflight/view/NotificationBar$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/view/NotificationBar$1;-><init>(Lcom/parrot/freeflight/view/NotificationBar;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar;->mDismissButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/view/NotificationBar$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/view/NotificationBar$2;-><init>(Lcom/parrot/freeflight/view/NotificationBar;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-direct {p0}, Lcom/parrot/freeflight/view/NotificationBar;->updateView()V

    .line 118
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar;->mTagTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 119
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 120
    iget-object v2, p0, Lcom/parrot/freeflight/view/NotificationBar;->mSubTitleTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 121
    return-void
.end method

.method private updateView()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 135
    iget-object v3, p0, Lcom/parrot/freeflight/view/NotificationBar;->mInAppNotification:Lcom/parrot/freeflight/notification/InAppNotification;

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Lcom/parrot/freeflight/view/NotificationBar;->mNotificationLayout:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 138
    .local v2, "fadeOut":Landroid/animation/Animator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 141
    iget-object v3, p0, Lcom/parrot/freeflight/view/NotificationBar;->mNotificationLayout:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 142
    .local v1, "fadeIn":Landroid/animation/Animator;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 143
    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 145
    new-instance v3, Lcom/parrot/freeflight/view/NotificationBar$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/view/NotificationBar$3;-><init>(Lcom/parrot/freeflight/view/NotificationBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 197
    .local v0, "as":Landroid/animation/AnimatorSet;
    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 198
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 199
    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/view/NotificationBar;->setVisibility(I)V

    .line 204
    .end local v0    # "as":Landroid/animation/AnimatorSet;
    .end local v1    # "fadeIn":Landroid/animation/Animator;
    .end local v2    # "fadeOut":Landroid/animation/Animator;
    :goto_0
    return-void

    .line 201
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/view/NotificationBar;->setVisibility(I)V

    goto :goto_0

    .line 137
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 141
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getInAppNotification()Lcom/parrot/freeflight/notification/InAppNotification;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/view/NotificationBar;->mInAppNotification:Lcom/parrot/freeflight/notification/InAppNotification;

    return-object v0
.end method

.method public setListener(Lcom/parrot/freeflight/view/NotificationBar$NotificationBarListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/view/NotificationBar$NotificationBarListener;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/parrot/freeflight/view/NotificationBar;->mListener:Lcom/parrot/freeflight/view/NotificationBar$NotificationBarListener;

    .line 208
    return-void
.end method

.method public setNotification(Lcom/parrot/freeflight/notification/InAppNotification;)V
    .locals 1
    .param p1, "inAppNotification"    # Lcom/parrot/freeflight/notification/InAppNotification;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/view/NotificationBar;->mInAppNotification:Lcom/parrot/freeflight/notification/InAppNotification;

    if-eq v0, p1, :cond_0

    .line 125
    iput-object p1, p0, Lcom/parrot/freeflight/view/NotificationBar;->mInAppNotification:Lcom/parrot/freeflight/notification/InAppNotification;

    .line 126
    invoke-direct {p0}, Lcom/parrot/freeflight/view/NotificationBar;->updateView()V

    .line 128
    :cond_0
    return-void
.end method
