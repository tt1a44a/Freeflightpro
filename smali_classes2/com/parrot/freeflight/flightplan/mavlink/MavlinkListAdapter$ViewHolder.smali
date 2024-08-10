.class Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MavlinkListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public final dateTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final mapImageView:Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final productTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final titleTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "mapImageView"    # Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "titleLabel"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "dateTextView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "productTextView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;->mapImageView:Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;

    .line 98
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;->titleTextView:Landroid/widget/TextView;

    .line 99
    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;->dateTextView:Landroid/widget/TextView;

    .line 100
    iput-object p4, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;->productTextView:Landroid/widget/TextView;

    .line 101
    return-void
.end method
