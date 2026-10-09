.class public Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "SegmentHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;
    }
.end annotation


# static fields
.field private static final archive_majver:I = 0x96

.field private static final archive_minver:I = 0x7

.field private static final magic:[I


# instance fields
.field private archive_modtime:I

.field private archive_next_count:I

.field private archive_options:I

.field private archive_size_hi:I

.field private archive_size_lo:I

.field private attribute_definition_count:I

.field private final band_headers:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private class_count:I

.field private cp_Class_count:I

.field private cp_Descr_count:I

.field private cp_Double_count:I

.field private cp_Field_count:I

.field private cp_Float_count:I

.field private cp_Imethod_count:I

.field private cp_Int_count:I

.field private cp_Long_count:I

.field private cp_Method_count:I

.field private cp_Signature_count:I

.field private cp_String_count:I

.field private cp_Utf8_count:I

.field private deflate_hint:Z

.field private file_count:I

.field private have_all_code_flags:Z

.field private have_class_flags_hi:Z

.field private have_code_flags_hi:Z

.field private have_field_flags_hi:Z

.field private final have_file_modtime:Z

.field private final have_file_options:Z

.field private have_file_size_hi:Z

.field private have_method_flags_hi:Z

.field private ic_count:I

.field private final majverCounter:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    const/16 v0, 0xd0

    const/16 v1, 0xd

    const/16 v2, 0xca

    const/16 v3, 0xfe

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->magic:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 113
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    .line 86
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->band_headers:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 88
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_all_code_flags:Z

    .line 97
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_file_modtime:Z

    .line 98
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_file_options:Z

    .line 107
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;-><init>(Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$1;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->majverCounter:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;

    .line 115
    return-void
.end method

.method private calculateArchiveOptions()V
    .locals 1

    .line 126
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->attribute_definition_count:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->band_headers:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 127
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 129
    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Int_count:I

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Float_count:I

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Long_count:I

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Double_count:I

    if-lez v0, :cond_3

    .line 130
    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 132
    :cond_3
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_all_code_flags:Z

    if-eqz v0, :cond_4

    .line 133
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 135
    :cond_4
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->file_count:I

    if-lez v0, :cond_5

    .line 136
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 138
    :cond_5
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->deflate_hint:Z

    if-eqz v0, :cond_6

    .line 139
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 142
    :cond_6
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 145
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 147
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_file_size_hi:Z

    if-eqz v0, :cond_7

    .line 148
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 150
    :cond_7
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_class_flags_hi:Z

    if-eqz v0, :cond_8

    .line 151
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 153
    :cond_8
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_field_flags_hi:Z

    if-eqz v0, :cond_9

    .line 154
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 156
    :cond_9
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_method_flags_hi:Z

    if-eqz v0, :cond_a

    .line 157
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 159
    :cond_a
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_code_flags_hi:Z

    if-eqz v0, :cond_b

    .line 160
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    .line 162
    :cond_b
    return-void
.end method

.method private writeArchiveFileCounts(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 312
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    .line 313
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_size_hi:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 314
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_size_lo:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 315
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_next_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 316
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_modtime:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 317
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->file_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 319
    :cond_0
    return-void
.end method

.method private writeArchiveSpecialCounts(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 322
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 323
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->band_headers:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 324
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->attribute_definition_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 326
    :cond_0
    return-void
.end method

.method private writeClassCounts(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "default_class_minver":I
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->majverCounter:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->getMostCommon()I

    move-result v1

    .line 331
    .local v1, "default_class_majver":I
    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->ic_count:I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 332
    const/4 v2, 0x0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 333
    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 334
    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->class_count:I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 335
    return-void
.end method

.method private writeCpCounts(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 338
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Utf8_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 339
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 340
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Int_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 341
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Float_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 342
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Long_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 343
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Double_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 345
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_String_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 346
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Class_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 347
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Signature_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 348
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Descr_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 349
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Field_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 350
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Method_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 351
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Imethod_count:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 352
    return-void
.end method


# virtual methods
.method public addMajorVersion(I)V
    .locals 1
    .param p1, "major"    # I

    .line 118
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->majverCounter:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->add(I)V

    .line 119
    return-void
.end method

.method public appendBandCodingSpecifier(I)V
    .locals 1
    .param p1, "specifier"    # I

    .line 122
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->band_headers:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 123
    return-void
.end method

.method public getArchive_modtime()I
    .locals 1

    .line 165
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_modtime:I

    return v0
.end method

.method public getDefaultMajorVersion()I
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->majverCounter:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$Counter;->getMostCommon()I

    move-result v0

    return v0
.end method

.method public have_all_code_flags()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_all_code_flags:Z

    return v0
.end method

.method public have_class_flags_hi()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_class_flags_hi:Z

    return v0
.end method

.method public have_code_flags_hi()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_code_flags_hi:Z

    return v0
.end method

.method public have_field_flags_hi()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_field_flags_hi:Z

    return v0
.end method

.method public have_file_modtime()Z
    .locals 1

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public have_file_options()Z
    .locals 1

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public have_file_size_hi()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_file_size_hi:Z

    return v0
.end method

.method public have_method_flags_hi()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_method_flags_hi:Z

    return v0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 209
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->magic:[I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar([ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 210
    const/4 v0, 0x7

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 211
    const/16 v0, 0x96

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 212
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->calculateArchiveOptions()V

    .line 213
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->archive_options:I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 214
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->writeArchiveFileCounts(Ljava/io/OutputStream;)V

    .line 215
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->writeArchiveSpecialCounts(Ljava/io/OutputStream;)V

    .line 216
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->writeCpCounts(Ljava/io/OutputStream;)V

    .line 217
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->writeClassCounts(Ljava/io/OutputStream;)V

    .line 218
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->band_headers:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->band_headers:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->encodeScalar([ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 221
    :cond_0
    return-void
.end method

.method public setAttribute_definition_count(I)V
    .locals 0
    .param p1, "attribute_definition_count"    # I

    .line 224
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->attribute_definition_count:I

    .line 225
    return-void
.end method

.method public setClass_count(I)V
    .locals 0
    .param p1, "class_count"    # I

    .line 228
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->class_count:I

    .line 229
    return-void
.end method

.method public setCp_Class_count(I)V
    .locals 0
    .param p1, "count"    # I

    .line 232
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Class_count:I

    .line 233
    return-void
.end method

.method public setCp_Descr_count(I)V
    .locals 0
    .param p1, "count"    # I

    .line 236
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Descr_count:I

    .line 237
    return-void
.end method

.method public setCp_Double_count(I)V
    .locals 0
    .param p1, "count"    # I

    .line 240
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Double_count:I

    .line 241
    return-void
.end method

.method public setCp_Field_count(I)V
    .locals 0
    .param p1, "count"    # I

    .line 244
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Field_count:I

    .line 245
    return-void
.end method

.method public setCp_Float_count(I)V
    .locals 0
    .param p1, "count"    # I

    .line 248
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Float_count:I

    .line 249
    return-void
.end method

.method public setCp_Imethod_count(I)V
    .locals 0
    .param p1, "count"    # I

    .line 252
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Imethod_count:I

    .line 253
    return-void
.end method

.method public setCp_Int_count(I)V
    .locals 0
    .param p1, "count"    # I

    .line 256
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Int_count:I

    .line 257
    return-void
.end method

.method public setCp_Long_count(I)V
    .locals 0
    .param p1, "count"    # I

    .line 260
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Long_count:I

    .line 261
    return-void
.end method

.method public setCp_Method_count(I)V
    .locals 0
    .param p1, "count"    # I

    .line 264
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Method_count:I

    .line 265
    return-void
.end method

.method public setCp_Signature_count(I)V
    .locals 0
    .param p1, "count"    # I

    .line 268
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Signature_count:I

    .line 269
    return-void
.end method

.method public setCp_String_count(I)V
    .locals 0
    .param p1, "count"    # I

    .line 272
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_String_count:I

    .line 273
    return-void
.end method

.method public setCp_Utf8_count(I)V
    .locals 0
    .param p1, "count"    # I

    .line 276
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->cp_Utf8_count:I

    .line 277
    return-void
.end method

.method public setDeflate_hint(Z)V
    .locals 0
    .param p1, "deflate_hint"    # Z

    .line 280
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->deflate_hint:Z

    .line 281
    return-void
.end method

.method public setFile_count(I)V
    .locals 0
    .param p1, "file_count"    # I

    .line 284
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->file_count:I

    .line 285
    return-void
.end method

.method public setHave_all_code_flags(Z)V
    .locals 0
    .param p1, "have_all_code_flags"    # Z

    .line 288
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_all_code_flags:Z

    .line 289
    return-void
.end method

.method public setHave_class_flags_hi(Z)V
    .locals 0
    .param p1, "have_class_flags_hi"    # Z

    .line 292
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_class_flags_hi:Z

    .line 293
    return-void
.end method

.method public setHave_code_flags_hi(Z)V
    .locals 0
    .param p1, "have_code_flags_hi"    # Z

    .line 296
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_code_flags_hi:Z

    .line 297
    return-void
.end method

.method public setHave_field_flags_hi(Z)V
    .locals 0
    .param p1, "have_field_flags_hi"    # Z

    .line 300
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_field_flags_hi:Z

    .line 301
    return-void
.end method

.method public setHave_method_flags_hi(Z)V
    .locals 0
    .param p1, "have_method_flags_hi"    # Z

    .line 304
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_method_flags_hi:Z

    .line 305
    return-void
.end method

.method public setIc_count(I)V
    .locals 0
    .param p1, "ic_count"    # I

    .line 308
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->ic_count:I

    .line 309
    return-void
.end method
