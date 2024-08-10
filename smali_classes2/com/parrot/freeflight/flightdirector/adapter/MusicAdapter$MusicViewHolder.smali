.class Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MusicViewHolder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDataLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDescriptionLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDurationView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mEndTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSampleEditorLayout:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelector:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStartTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTitleView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWaveformView:Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x2

    .line 249
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 251
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mContext:Landroid/content/Context;

    .line 254
    iput-object p2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mView:Landroid/view/View;

    .line 255
    const v0, 0x7f0a0321

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mDescriptionLayout:Landroid/view/View;

    .line 256
    const v0, 0x7f0a0329

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f0a0322

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mDurationView:Landroid/widget/TextView;

    .line 258
    const v0, 0x7f0a0327

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mSelector:Landroid/view/View;

    .line 259
    const v0, 0x7f0a0320

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mDataLayout:Landroid/view/View;

    .line 260
    const v0, 0x7f0a0326

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mSampleEditorLayout:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    .line 261
    const v0, 0x7f0a032a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mWaveformView:Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;

    .line 262
    const v0, 0x7f0a0328

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mStartTextView:Landroid/widget/TextView;

    .line 263
    const v0, 0x7f0a0323

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mEndTextView:Landroid/widget/TextView;

    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 267
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mDurationView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mStartTextView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mEndTextView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mDataLayout:Landroid/view/View;

    const v1, 0x7f050134

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 272
    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;Lcom/parrot/freeflight/flightdirector/data/MusicItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;
    .param p1, "x1"    # Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->setWaveform(Lcom/parrot/freeflight/flightdirector/data/MusicItem;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;Lcom/parrot/freeflight/flightdirector/data/MusicItem;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;
    .param p1, "x1"    # Lcom/parrot/freeflight/flightdirector/data/MusicItem;
    .param p2, "x2"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->setSampleEditor(Lcom/parrot/freeflight/flightdirector/data/MusicItem;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mSampleEditorLayout:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mStartTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mEndTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;Landroid/widget/TextView;Landroid/widget/TextView;III)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 221
    invoke-direct/range {p0 .. p5}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->setLabelsXOffset(Landroid/widget/TextView;Landroid/widget/TextView;III)V

    return-void
.end method

.method private setLabelsXOffset(Landroid/widget/TextView;Landroid/widget/TextView;III)V
    .locals 5
    .param p1, "startLabel"    # Landroid/widget/TextView;
    .param p2, "endLabel"    # Landroid/widget/TextView;
    .param p3, "leftOffset"    # I
    .param p4, "rightOffset"    # I
    .param p5, "total"    # I

    .prologue
    .line 338
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 339
    .local v0, "additionalMargin":I
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 341
    .local v1, "endLabelParams":Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v3, p5, p4

    add-int/2addr v3, v0

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 342
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 345
    .local v2, "startLabelParams":Landroid/widget/RelativeLayout$LayoutParams;
    add-int v3, p3, v0

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 346
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    .end local v1    # "endLabelParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "startLabelParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private setSampleEditor(Lcom/parrot/freeflight/flightdirector/data/MusicItem;I)V
    .locals 8
    .param p1, "item"    # Lcom/parrot/freeflight/flightdirector/data/MusicItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "sampleDuration"    # I

    .prologue
    .line 317
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getStartTime()D

    move-result-wide v0

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mSampleEditorLayout:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getDuration()D

    move-result-wide v6

    invoke-static {v0, v1, v2, v6, v7}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1700(DID)D

    move-result-wide v0

    double-to-int v3, v0

    .line 318
    .local v3, "leftOffsetPx":I
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mSampleEditorLayout:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->setStartOffset(I)V

    .line 320
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getEndTime()D

    move-result-wide v0

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mSampleEditorLayout:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getDuration()D

    move-result-wide v6

    invoke-static {v0, v1, v2, v6, v7}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1700(DID)D

    move-result-wide v0

    double-to-int v4, v0

    .line 321
    .local v4, "rightOffsetPx":I
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mStartTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mEndTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mSampleEditorLayout:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->getWidth()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->setLabelsXOffset(Landroid/widget/TextView;Landroid/widget/TextView;III)V

    .line 323
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mStartTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mSampleEditorLayout:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getDuration()D

    move-result-wide v6

    invoke-static {v3, v1, v6, v7}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1000(IID)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mEndTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getStartTime()D

    move-result-wide v6

    invoke-static {v6, v7, p2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1200(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    return-void
.end method

.method private setWaveform(Lcom/parrot/freeflight/flightdirector/data/MusicItem;)V
    .locals 2
    .param p1, "item"    # Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getWaveFormImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mWaveformView:Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getCheapSoundFile()Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->setSoundFile(Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;)V

    .line 335
    :cond_0
    return-void
.end method


# virtual methods
.method setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mSampleEditorLayout:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mDescriptionLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    return-void
.end method

.method setSelected(Z)V
    .locals 7
    .param p1, "isSelected"    # Z

    .prologue
    const v4, 0x7f050146

    const v3, 0x7f0500a3

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 302
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mSelector:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    move v0, v3

    :goto_1
    invoke-static {v6, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mDurationView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    :goto_2
    invoke-static {v5, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mSampleEditorLayout:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->setIsRectSelected(Z)V

    .line 306
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mStartTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mEndTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    return-void

    :cond_0
    move v0, v2

    .line 302
    goto :goto_0

    :cond_1
    move v0, v4

    .line 303
    goto :goto_1

    :cond_2
    move v3, v4

    .line 304
    goto :goto_2

    :cond_3
    move v0, v2

    .line 306
    goto :goto_3

    :cond_4
    move v1, v2

    .line 307
    goto :goto_4
.end method

.method setView(Lcom/parrot/freeflight/flightdirector/data/MusicItem;IZ)V
    .locals 4
    .param p1, "item"    # Lcom/parrot/freeflight/flightdirector/data/MusicItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "sampleDuration"    # I
    .param p3, "isPlaying"    # Z

    .prologue
    .line 275
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mDurationView:Landroid/widget/TextView;

    invoke-static {}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1400()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getDuration()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mWaveformView:Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 279
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->setWaveform(Lcom/parrot/freeflight/flightdirector/data/MusicItem;)V

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mSampleEditorLayout:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getDuration()D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->setSampleSelector(II)V

    .line 292
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mSampleEditorLayout:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    invoke-virtual {v0, p3}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->setPlayingStatus(Z)V

    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mSampleEditorLayout:Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$2;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;Lcom/parrot/freeflight/flightdirector/data/MusicItem;I)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void

    .line 281
    :cond_0
    const-class v0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->mWaveformView:Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$1;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;Lcom/parrot/freeflight/flightdirector/data/MusicItem;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/AudioWaveformView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
