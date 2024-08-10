.class public Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FlightPlanTimelineActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;


# static fields
.field private static final DRAG_PRESS_TIME:I = 0xfa

.field private static final EXTRA_SELECTED_WAYPOINT_INDEX:Ljava/lang/String; = "EXTRA_SELECTED_WAYPOINT_INDEX"


# instance fields
.field private mActionListView:Landroid/support/v7/widget/RecyclerView;

.field private mActionPopup:Landroid/support/v7/app/AlertDialog;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

.field private mFlyingImage:Landroid/widget/ImageView;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mTimelineGroupView:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

.field private mTotalTimeTextView:Landroid/widget/TextView;

.field private final mTouchHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTouchHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;Landroid/view/DragEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;
    .param p1, "x1"    # Landroid/view/DragEvent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->startAnimation(Landroid/view/DragEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mFlyingImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private closePopup()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mActionPopup:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mActionPopup:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 228
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mActionPopup:Landroid/support/v7/app/AlertDialog;

    .line 229
    return-void
.end method

.method private getAnimationEndPosition(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)[I
    .locals 6
    .param p1, "dragAction"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 170
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mActionListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;

    invoke-virtual {v3, p1}, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;->getActionIndex(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)I

    move-result v0

    .line 171
    .local v0, "actionIndexInCommandList":I
    if-ltz v0, :cond_0

    .line 172
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mActionListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 173
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 174
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 175
    .local v2, "destination":[I
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 176
    const/4 v3, 0x1

    aget v4, v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    aput v4, v2, v3

    .line 180
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "destination":[I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getStartingIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "selectedWayPointIndex"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "startingIntent":Landroid/content/Intent;
    const-string v1, "EXTRA_SELECTED_WAYPOINT_INDEX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    return-object v0
.end method

.method private startAnimation(Landroid/view/DragEvent;)V
    .locals 11
    .param p1, "e"    # Landroid/view/DragEvent;

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    .line 132
    .local v10, "dropAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    invoke-direct {p0, v10}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->getAnimationEndPosition(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)[I

    move-result-object v9

    .line 133
    .local v9, "destination":[I
    if-eqz v9, :cond_0

    aget v2, v9, v1

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mFlyingImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mFlyingImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getIconRes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mFlyingImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getMainColor()I

    move-result v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColor(Landroid/view/View;I)V

    .line 138
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 139
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    aget v3, v9, v1

    int-to-float v4, v3

    .line 141
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mFlyingImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v6, v3, v5

    const/4 v3, 0x1

    aget v3, v9, v3

    int-to-float v8, v3

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 144
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 146
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mFlyingImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 147
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$3;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 163
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->startNow()V

    .line 166
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v9    # "destination":[I
    .end local v10    # "dropAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    :cond_0
    return-void
.end method


# virtual methods
.method public getDragShadowView(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)Landroid/view/View;
    .locals 2
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mFlyingImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getIconRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mFlyingImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getMainColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColor(Landroid/view/View;I)V

    .line 236
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mFlyingImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProductCharacteristics()Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPlanProductCharacteristics()Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method public isEditionAllowed()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public onActionClicked(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Z)V
    .locals 11
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isForDefault"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 185
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->closePopup()V

    .line 186
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getParameterSize()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v9, 0x7f110239

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ")"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 189
    const v4, 0x7f1104d4

    new-instance v5, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$4;

    invoke-direct {v5, p0, p2, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$4;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;ZLcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getParameterIterator()Ljava/util/Iterator;

    move-result-object v7

    .line 202
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter<*>;>;"
    if-eqz v7, :cond_2

    .line 203
    const v4, 0x7f11012c

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 205
    new-instance v1, Landroid/widget/TableLayout;

    invoke-direct {v1, p0}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 206
    .local v1, "table":Landroid/widget/TableLayout;
    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 207
    invoke-virtual {v1, v10, v10}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 209
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->getView(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)Landroid/widget/TableRow;

    move-result-object v6

    .line 211
    .local v6, "childView":Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 187
    .end local v1    # "table":Landroid/widget/TableLayout;
    .end local v6    # "childView":Landroid/view/View;
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter<*>;>;"
    .end local v8    # "title":Ljava/lang/String;
    :cond_0
    const-string v4, ""

    goto :goto_0

    .line 213
    .restart local v1    # "table":Landroid/widget/TableLayout;
    .restart local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter<*>;>;"
    .restart local v8    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06032d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "padding":I
    move v4, v2

    move v5, v3

    .line 214
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/support/v7/app/AlertDialog$Builder;

    .line 216
    .end local v1    # "table":Landroid/widget/TableLayout;
    .end local v2    # "padding":I
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mActionPopup:Landroid/support/v7/app/AlertDialog;

    .line 217
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mActionPopup:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 218
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v5, 0x7f0c0033

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->setContentView(I)V

    .line 76
    new-instance v5, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 78
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    .line 79
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getGeneralInfo()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    .line 81
    .local v3, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    const v5, 0x7f0a03b6

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mActionListView:Landroid/support/v7/widget/RecyclerView;

    .line 82
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 83
    .local v2, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 84
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mActionListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 85
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionsFactory;->create(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v5

    invoke-direct {v0, v5, p0}, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;-><init>([Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;)V

    .line 86
    .local v0, "adapter":Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mActionListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 88
    const v5, 0x7f0a0198

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTimelineGroupView:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .line 89
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTimelineGroupView:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {v5, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->setProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 90
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTimelineGroupView:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPlanProductCharacteristics()Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->setProductCharacteristics(Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 91
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTimelineGroupView:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "EXTRA_SELECTED_WAYPOINT_INDEX"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->setSelectedWayPointIndex(I)V

    .line 92
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTimelineGroupView:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {v5, p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->setActionInterface(Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;)V

    .line 93
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTimelineGroupView:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->setActionEditor(Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;)V

    .line 94
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTimelineGroupView:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    new-instance v6, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;

    invoke-direct {v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;-><init>()V

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->setAdapter(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupAdapter;)V

    .line 96
    const v5, 0x7f0a04c7

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTotalTimeTextView:Landroid/widget/TextView;

    .line 97
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTotalTimeTextView:Landroid/widget/TextView;

    invoke-static {v5, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 99
    const v5, 0x7f0a01e9

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mFlyingImage:Landroid/widget/ImageView;

    .line 101
    const v5, 0x1020002

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 102
    .local v4, "rootView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 103
    new-instance v5, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$1;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$1;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 116
    :cond_0
    const v5, 0x7f0a00c0

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 117
    .local v1, "backBtn":Landroid/widget/ImageButton;
    new-instance v5, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$2;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$2;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_1

    .line 125
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 223
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->closePopup()V

    .line 224
    return-void
.end method

.method public onTotalTimeChanged(F)V
    .locals 2
    .param p1, "totalTimeInSecond"    # F

    .prologue
    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTotalTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTimelineGroupView:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getTimeText(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "action"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 257
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$5;

    invoke-direct {v0, p0, p1, p3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$5;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;Landroid/view/View;Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 266
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 278
    :goto_0
    :pswitch_0
    return-void

    .line 268
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTouchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 269
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTouchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 273
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->mTouchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
