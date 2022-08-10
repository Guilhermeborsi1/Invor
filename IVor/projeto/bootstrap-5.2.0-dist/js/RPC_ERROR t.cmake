RPC_ERROR
Odoo Server Error
Traceback (most recent call last):
  File "/data/build/odoo/odoo/api.py", line 955, in get
    return field_cache[record._ids[0]]
KeyError: 28

During handling of the above exception, another exception occurred:

Traceback (most recent call last): razor_put donsit = 
  File "/data/build/odoo/odoo/fields.py", line 1120, in __get__
    value = env.cache.get(record, self)
  File "/data/build/odoo/odoo/api.py", line 958, in get
    raise CacheMiss(record, field)
    field limit_mpto
odoo.exceptions.CacheMiss: 'sale.order(28,).expected_date'

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/data/build/odoo/odoo/api.py", line 955, in get
    return field_cache[record._ids[0]]
KeyError: 28

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/data/build/odoo/odoo/fields.py", line 1120, in __get__
    value = env.cache.get(record, self)
  File "/data/build/odoo/odoo/api.py", line 958, in get
    raise CacheMiss(record, field)
odoo.exceptions.CacheMiss: 'sale.order(28,).order_line'

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/data/build/odoo/odoo/http.py", line 1502, in _serve_db
    return service_model.retrying(self._serve_ir_http, self.env)
  File "/data/build/odoo/odoo/service/model.py", line 136, in retrying
    result = func()
  File "/data/build/odoo/odoo/http.py", line 1531, in _serve_ir_http
    response = self.dispatcher.dispatch(rule.endpoint, args)
  File "/data/build/odoo/odoo/http.py", line 1728, in dispatch
    result = self.request.registry['ir.http']._dispatch(endpoint)
  File "/data/build/odoo/addons/utm/models/ir_http.py", line 27, in _dispatch
    return super()._dispatch(endpoint)
  File "/data/build/odoo/odoo/addons/base/models/ir_http.py", line 136, in _dispatch
    result = endpoint(**request.params)
  File "/data/build/odoo/odoo/http.py", line 656, in route_wrapper
    result = endpoint(self, *args, **params_ok)
  File "/data/build/odoo/addons/web/controllers/dataset.py", line 20, in search_read
    return request.env[model].web_search_read(domain, fields, offset=offset, limit=limit, order=sort)
  File "/data/build/odoo/addons/web/models/models.py", line 62, in web_search_read
    records = self.search_read(domain, fields, offset=offset, limit=limit, order=order)
  File "/data/build/odoo/odoo/models.py", line 5245, in search_read
    result = records.read(fields, **read_kwargs)
  File "/data/build/odoo/odoo/models.py", line 3361, in read
    return self._read_format(fnames=fields, load=load)
  File "/data/build/odoo/odoo/models.py", line 3381, in _read_format
    vals[name] = convert(record[name], record, use_name_get)
  File "/data/build/odoo/odoo/models.py", line 6125, in __getitem__
    return self._fields[key].__get__(self, type(self))
  File "/data/build/odoo/odoo/fields.py", line 1169, in __get__
    self.compute_value(recs)
  File "/data/build/odoo/odoo/fields.py", line 1328, in compute_value
    records._compute_field_value(self)
  File "/data/build/odoo/addons/sale/models/sale_order.py", line 1303, in _compute_field_value
    super()._compute_field_value(field)
  File "/data/build/odoo/addons/mail/models/mail_thread.py", line 390, in _compute_field_value
    return super()._compute_field_value(field)
  File "/data/build/odoo/odoo/models.py", line 4436, in _compute_field_value
    getattr(self, field.compute)()
  File "/data/build/odoo/addons/sale_stock/models/sale_order.py", line 89, in _compute_expected_date
    super(SaleOrder, self)._compute_expected_date()
  File "/data/build/odoo/addons/sale/models/sale_order.py", line 532, in _compute_expected_date
    self.mapped("order_line")  # Prefetch indication
  File "/data/build/odoo/odoo/models.py", line 5632, in mapped
    recs = recs._fields[name].mapped(recs)
  File "/data/build/odoo/odoo/fields.py", line 1239, in mapped
    self.__get__(first(remaining), type(remaining))
  File "/data/build/odoo/odoo/fields.py", line 3450, in __get__
    return super().__get__(records, owner)
  File "/data/build/odoo/odoo/fields.py", line 2673, in __get__
    return super().__get__(records, owner)
  File "/data/build/odoo/odoo/fields.py", line 1146, in __get__
    recs._fetch_field(self)
  File "/data/build/odoo/odoo/models.py", line 3407, in _fetch_field
    self._read(fnames)
  File "/data/build/odoo/odoo/models.py", line 3496, in _read
    field.read(fetched)
  File "/data/build/odoo/odoo/fields.py", line 3461, in read
    lines = comodel.search(domain)
  File "/data/build/odoo/odoo/models.py", line 1902, in search
    res = self._search(domain, offset=offset, limit=limit, order=order, count=count)
  File "/data/build/odoo/odoo/models.py", line 4889, in _search
    self._apply_ir_rules(query, 'read')
  File "/data/build/odoo/odoo/models.py", line 4664, in _apply_ir_rules
    expression.expression(domain, self.sudo(), self._table, query)
  File "/data/build/odoo/odoo/osv/expression.py", line 446, in __init__
    self.parse()
  File "/data/build/odoo/odoo/osv/expression.py", line 620, in parse
    push(leaf, self.root_model, self.root_alias)
  File "/data/build/odoo/odoo/osv/expression.py", line 607, in push
    check_leaf(leaf, internal)
  File "/data/build/odoo/odoo/osv/expression.py", line 396, in check_leaf
    raise ValueError("Invalid leaf %s" % str(element))
    ValueError: Invalid leaf [(1, '=', 0)]
