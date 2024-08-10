.class Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;
.super Ljava/lang/Object;
.source "TimelineGroupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaceHolderParam"
.end annotation


# instance fields
.field private color:I

.field private columnIndex:I

.field private section:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1571
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->columnIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;

    .prologue
    .line 1570
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    .prologue
    .line 1570
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->columnIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;
    .param p1, "x1"    # I

    .prologue
    .line 1570
    iput p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->columnIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    .prologue
    .line 1570
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->color:I

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;
    .param p1, "x1"    # I

    .prologue
    .line 1570
    iput p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->color:I

    return p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;

    .prologue
    .line 1570
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->section:I

    return v0
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;
    .param p1, "x1"    # I

    .prologue
    .line 1570
    iput p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$PlaceHolderParam;->section:I

    return p1
.end method
