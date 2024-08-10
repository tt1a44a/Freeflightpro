.class public Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;
.super Landroid/widget/FrameLayout;
.source "DroneFlyingButtonView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;,
        Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingAction;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x3

.field public static final FOLLOW:I = 0x7

.field public static final IN_HAND:I = 0x6

.field public static final LANDING:I = 0x2

.field public static final NOT_CONNECTED:I = 0x0

.field public static final STOP:I = 0x4

.field public static final STOP_FLIGHT_PLAN:I = 0xb

.field public static final STOP_FOLLOW:I = 0x5

.field public static final STOP_POI:I = 0x9

.field public static final STOP_RTH:I = 0xa

.field public static final STOP_TAP:I = 0x8

.field public static final TAKE_OFF:I = 0x1


# instance fields
.field private mActionsArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;",
            ">;"
        }
    .end annotation
.end field

.field protected mDoubleButtonLayout:Landroid/widget/RelativeLayout;

.field private mDroneFlyingCommand:I
    .annotation build Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingAction;
    .end annotation
.end field

.field protected mFollowButton:Landroid/widget/ImageButton;

.field protected mSingleButton:Landroid/widget/ImageButton;

.field protected mStopButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->init()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;

    .prologue
    .line 18
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mDroneFlyingCommand:I

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mActionsArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0065

    invoke-static {v0, v1, p0}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mActionsArray:Landroid/util/SparseArray;

    .line 77
    const v0, 0x7f0a03f1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mSingleButton:Landroid/widget/ImageButton;

    .line 78
    const v0, 0x7f0a0125

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mDoubleButtonLayout:Landroid/widget/RelativeLayout;

    .line 79
    const v0, 0x7f0a040f

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mStopButton:Landroid/widget/ImageButton;

    .line 80
    const v0, 0x7f0a016b

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mFollowButton:Landroid/widget/ImageButton;

    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mSingleButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$1;-><init>(Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mStopButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$2;-><init>(Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mFollowButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$3;-><init>(Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method


# virtual methods
.method public setCommand(ILcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;)V
    .locals 1
    .param p1, "action"    # I
        .annotation build Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingAction;
        .end annotation
    .end param
    .param p2, "command"    # Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingCommand;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mActionsArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 142
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mSingleButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mFollowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 149
    return-void
.end method

.method public setToFlyingAction(I)V
    .locals 4
    .param p1, "action"    # I
        .annotation build Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView$FlyingAction;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 120
    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mDroneFlyingCommand:I

    if-eq p1, v1, :cond_0

    .line 122
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mSingleButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mDoubleButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    :goto_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mDroneFlyingCommand:I

    .line 138
    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mSingleButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mDoubleButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mSingleButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    .local v0, "takeOffDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 133
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/DroneFlyingButtonView;->mSingleButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->invalidate()V

    goto :goto_0
.end method
