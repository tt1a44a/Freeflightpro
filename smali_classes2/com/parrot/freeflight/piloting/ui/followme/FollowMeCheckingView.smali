.class public Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;
.super Landroid/widget/RelativeLayout;
.source "FollowMeCheckingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$FollowMeCheckingListener;
    }
.end annotation


# static fields
.field protected static final ERROR_STATUS:I = 0x2

.field protected static final OPTIONAL_ERROR_STATUS:I = 0x3

.field protected static final PENDING_STATUS:I = 0x0

.field protected static final SUCESS_STATUS:I = 0x1


# instance fields
.field private final mBarometerStatusImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBuyButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCheckingTitle:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeviceGpsAvailable:Z

.field private mDeviceGpsUpdated:Z

.field private final mDeviceStatusText:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneGpsAvailable:Z

.field private mDroneGpsUpdated:Z

.field private final mDroneStatusText:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeStatusButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeStatusImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeStatusLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeStatusTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFreeTrialTimeLeft:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mShowCheckbox:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$FollowMeCheckingListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "followMeRegistrationManager"    # Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$FollowMeCheckingListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 68
    iput-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDroneGpsAvailable:Z

    .line 69
    iput-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDeviceGpsAvailable:Z

    .line 71
    iput-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDroneGpsUpdated:Z

    .line 72
    iput-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDeviceGpsUpdated:Z

    .line 84
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    .line 86
    invoke-static {p1}, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    .line 88
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    const v3, 0x7f0c008a

    invoke-static {p1, v3, p0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    const v3, 0x7f050129

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->setBackgroundResource(I)V

    .line 93
    const v3, 0x7f0a00e8

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mCheckingTitle:Landroid/widget/TextView;

    .line 95
    const v3, 0x7f0a00e0

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDroneStatusText:Landroid/widget/TextView;

    .line 96
    const v3, 0x7f0a00e2

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDeviceStatusText:Landroid/widget/TextView;

    .line 97
    const v3, 0x7f0a00dd

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mBarometerStatusImage:Landroid/widget/ImageView;

    .line 98
    const v3, 0x7f0a00e3

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mShowCheckbox:Landroid/widget/CheckBox;

    .line 100
    const v3, 0x7f0a00e6

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeStatusLayout:Landroid/widget/RelativeLayout;

    .line 101
    const v3, 0x7f0a00e5

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeStatusImage:Landroid/widget/ImageView;

    .line 102
    const v3, 0x7f0a00e7

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeStatusTextView:Landroid/widget/TextView;

    .line 103
    const v3, 0x7f0a00e4

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeStatusButton:Landroid/widget/ImageButton;

    .line 105
    const v3, 0x7f0a0058

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mBuyButton:Landroid/widget/Button;

    .line 106
    const v3, 0x7f0a04c6

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFreeTrialTimeLeft:Landroid/widget/TextView;

    .line 108
    const v3, 0x7f0a00df

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 109
    .local v2, "mBarometerStatusText":Landroid/widget/TextView;
    const v3, 0x7f0a00de

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    .local v1, "mBarometerStatusSubText":Landroid/widget/TextView;
    const v3, 0x7f0a016a

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 112
    .local v0, "closeBtn":Landroid/widget/ImageButton;
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$1;

    invoke-direct {v3, p0, p3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$FollowMeCheckingListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeStatusButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$2;

    invoke-direct {v4, p0, p3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$2;-><init>(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$FollowMeCheckingListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mShowCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->getShowOnError()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mShowCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$3;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$3;-><init>(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mBuyButton:Landroid/widget/Button;

    new-instance v4, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$4;

    invoke-direct {v4, p0, p1}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView$4;-><init>(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->updateBuyState()V

    .line 154
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mCheckingTitle:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 155
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDroneStatusText:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 156
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDeviceStatusText:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 157
    invoke-static {p1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 158
    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 159
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mShowCheckbox:Landroid/widget/CheckBox;

    invoke-static {p1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 160
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeStatusTextView:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 161
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mBuyButton:Landroid/widget/Button;

    invoke-static {p1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 162
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFreeTrialTimeLeft:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 165
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeStatusImage:Landroid/widget/ImageView;

    const v4, 0x7f010013

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->isAccessible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mShowCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;)Lcom/parrot/freeflight/piloting/preference/FollowMePreference;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMePreference:Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;)Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    return-object v0
.end method

.method private isAccessible()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDroneGpsAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDeviceGpsAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBuyState()V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 174
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->isPurchased()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->isPromotionActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFreeTrialTimeLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFreeTrialTimeLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->getTrialRemainingTime()I

    move-result v0

    .line 181
    .local v0, "daysLeft":I
    if-ltz v0, :cond_1

    .line 182
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFreeTrialTimeLeft:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0003

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v0, v4}, Lcom/parrot/freeflight/util/SafeRes;->getQuantityString(Landroid/content/res/Resources;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateStatusButton()V
    .locals 3

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDroneGpsUpdated:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDeviceGpsUpdated:Z

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeStatusButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeStatusLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 214
    :cond_1
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDroneGpsUpdated:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDroneGpsAvailable:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDeviceGpsUpdated:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDeviceGpsAvailable:Z

    if-nez v0, :cond_5

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeStatusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0702db

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :cond_4
    :goto_0
    return-void

    .line 216
    :cond_5
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDroneGpsUpdated:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDeviceGpsUpdated:Z

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mFollowMeStatusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0702de

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public updateBarometerStatus(Z)V
    .locals 2
    .param p1, "available"    # Z

    .prologue
    .line 204
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mBarometerStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 206
    return-void

    .line 205
    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public updateDeviceGpsStatus(Z)V
    .locals 4
    .param p1, "available"    # Z

    .prologue
    const/4 v2, 0x1

    .line 196
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDeviceStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 197
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 198
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDeviceGpsAvailable:Z

    .line 199
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDeviceGpsUpdated:Z

    .line 200
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->updateStatusButton()V

    .line 201
    return-void

    .line 197
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public updateDroneGpsStatus(Z)V
    .locals 4
    .param p1, "available"    # Z

    .prologue
    const/4 v2, 0x1

    .line 188
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDroneStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 189
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 190
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDroneGpsAvailable:Z

    .line 191
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->mDroneGpsUpdated:Z

    .line 192
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->updateStatusButton()V

    .line 193
    return-void

    .line 189
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
