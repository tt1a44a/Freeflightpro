.class public Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;
.super Landroid/widget/RelativeLayout;
.source "FlightPlanToolbarView.java"


# static fields
.field private static final TIMER_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field mDurationView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mFlightPlanView:Lcom/parrot/freeflight/view/CheckableImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOnCloseClickListener:Landroid/view/View$OnClickListener;

.field private mOptionsClickListener:Landroid/view/View$OnClickListener;

.field mOptionsView:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->TIMER_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mOnCloseClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mOptionsClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 52
    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/view/CheckableImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mFlightPlanView:Lcom/parrot/freeflight/view/CheckableImageButton;

    .line 53
    const v0, 0x7f0a0167

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mOptionsView:Landroid/widget/ImageButton;

    .line 54
    const v0, 0x7f0a0166

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mDurationView:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mFlightPlanView:Lcom/parrot/freeflight/view/CheckableImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/CheckableImageButton;->setChecked(Z)V

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mFlightPlanView:Lcom/parrot/freeflight/view/CheckableImageButton;

    new-instance v1, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView$1;-><init>(Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mOptionsView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView$2;-><init>(Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method public setDuration(J)V
    .locals 7
    .param p1, "duration"    # J

    .prologue
    .line 84
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mDurationView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :goto_0
    sget-object v1, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->TIMER_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "time":Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mDurationView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void

    .line 87
    .end local v0    # "time":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mDurationView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDurationLimitExceeded(Z)V
    .locals 2
    .param p1, "isExceeded"    # Z

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mDurationView:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mDurationView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setOnCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onCloseClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mOnCloseClickListener:Landroid/view/View$OnClickListener;

    .line 77
    return-void
.end method

.method public setOptionsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "optionsClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->mOptionsClickListener:Landroid/view/View$OnClickListener;

    .line 81
    return-void
.end method
