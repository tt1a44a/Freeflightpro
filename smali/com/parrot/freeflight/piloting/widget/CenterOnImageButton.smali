.class public Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;
.super Landroid/support/v7/widget/AppCompatImageButton;
.source "CenterOnImageButton.java"


# instance fields
.field private mCenterOn:I

.field private mIsDroneLocationKnown:Z

.field private mIsFlightPlanNavigation:Z

.field private mIsUserLocationKnown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->init()V

    .line 39
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mCenterOn:I

    .line 49
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsUserLocationKnown:Z

    .line 50
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsDroneLocationKnown:Z

    .line 51
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsFlightPlanNavigation:Z

    .line 52
    return-void
.end method


# virtual methods
.method public disableFlightPlanNavigation()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsFlightPlanNavigation:Z

    .line 114
    return-void
.end method

.method public displayCenterOnDrone()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 123
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->invalidate()V

    .line 124
    return-void
.end method

.method public displayCenterOnNothing()V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 118
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->invalidate()V

    .line 119
    return-void
.end method

.method public displayCenterOnUser()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 128
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->invalidate()V

    .line 129
    return-void
.end method

.method public enableFlightPlanNavigation()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsFlightPlanNavigation:Z

    .line 110
    return-void
.end method

.method public setCenterOn(I)V
    .locals 2
    .param p1, "centerOn"    # I

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsFlightPlanNavigation:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->displayCenterOnUser()V

    .line 93
    :goto_0
    return-void

    .line 60
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 63
    :pswitch_0
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mCenterOn:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsUserLocationKnown:Z

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->displayCenterOnUser()V

    goto :goto_0

    .line 65
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mCenterOn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsDroneLocationKnown:Z

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->displayCenterOnDrone()V

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->displayCenterOnNothing()V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsUserLocationKnown:Z

    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->displayCenterOnUser()V

    .line 79
    :goto_1
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mCenterOn:I

    goto :goto_0

    .line 74
    :cond_3
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsDroneLocationKnown:Z

    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->displayCenterOnDrone()V

    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->displayCenterOnNothing()V

    goto :goto_1

    .line 82
    :pswitch_2
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsDroneLocationKnown:Z

    if-eqz v0, :cond_5

    .line 83
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->displayCenterOnDrone()V

    .line 89
    :goto_2
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mCenterOn:I

    goto :goto_0

    .line 84
    :cond_5
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsUserLocationKnown:Z

    if-eqz v0, :cond_6

    .line 85
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->displayCenterOnUser()V

    goto :goto_2

    .line 87
    :cond_6
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->displayCenterOnNothing()V

    goto :goto_2

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setData(Landroid/location/Location;Z)V
    .locals 1
    .param p1, "userLocation"    # Landroid/location/Location;
    .param p2, "isDroneLocationKnown"    # Z

    .prologue
    .line 96
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsUserLocationKnown:Z

    .line 97
    iput-boolean p2, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsDroneLocationKnown:Z

    .line 98
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDroneLocationKnown(Z)V
    .locals 0
    .param p1, "droneLocationKnown"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsDroneLocationKnown:Z

    .line 106
    return-void
.end method

.method public setUserLocationKnown(Z)V
    .locals 0
    .param p1, "userLocationKnown"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->mIsUserLocationKnown:Z

    .line 102
    return-void
.end method
